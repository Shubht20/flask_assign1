from flask import Flask, request,jsonify,Response
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate
from country import Country,CountryNeighbour
from flask import json
from app import app,db
from flask import Blueprint, request
country_bp = Blueprint("country", __name__, url_prefix="")

@country_bp.route('/')
def index():
 return 'country'

@country_bp.route('/country',methods=['GET'])
def sorted_countries():
  sort_by = request.args.get('sort_by', 'a_to_z')
  page = int(request.args.get('page', 1))
  per_page = int(request.args.get('per_page', 10))
  search_query = request.args.get('q', '')
  
  if Country.query.count()%per_page==0:
     total_pages=int(Country.query.count()/per_page)
  else:
     total_pages=int(Country.query.count()/per_page)+1
  if page>total_pages:
      return json.dumps( {
        "list": {"countries":[]},
        "has_next":False,
        "has_prev": False,
        "page": page,
        "total_pages": total_pages,
        "per_page": per_page,
        "total_countries":Country.query.count(),
        
    })

  #sort country
  if sort_by == 'a_to_z':
        countries = Country.query.order_by(Country.name.asc()).paginate(page=page,per_page=per_page)
  elif sort_by == 'z_to_a':
        countries = Country.query.order_by(Country.name.desc()).paginate(page=page,per_page=per_page)
  elif sort_by == 'population_high_to_low':
        countries = Country.query.order_by(Country.population.desc()).paginate(page=page,per_page=per_page)
  elif sort_by == 'population_low_to_high':
        countries = Country.query.order_by(Country.population.asc()).paginate(page=page,per_page=per_page)
  elif sort_by == 'area_high_to_low':
        countries = Country.query.order_by(Country.area.desc()).paginate(page=page,per_page=per_page)
  elif sort_by == 'area_low_to_high':
        countries = Country.query.order_by(Country.area.asc()).paginate(page=page,per_page=per_page)
  else:
        return jsonify({'error': 'Invalid sort_by parameter'}), 400  
  prev=False
  next=False
  if countries.has_next:
    next=True
  if countries.has_prev:
    prev=True
   
  #search of country
  if search_query:
        countries = Country.query.filter(
            db.or_(
                Country.name.ilike(f'%{search_query}%'),
                Country.region.ilike(f'%{search_query}%'),
                Country.subregion.ilike(f'%{search_query}%')
            )
        )

   
  country_list=[]
  for country in countries:
        country_list.append({"id":country.id, 
                        "name":country.name,
                        "cca": country.cca, 
                        "currency_code": 
                        country.currency_code, 
                        "currency":country.currency,
                        "capital": country.capital,
                        "region":country.region,
                        "subregion":country.subregion,
                        "area":country.area,
                        "map_url":country.map_url, 
                        "population":country.population,
                        "flag_url":country.flag_url,
                        })
 
      
  response = {
        "list": {"countries":country_list},
        "has_next":next,
        "has_prev": prev,
        "page": page,
        "total_pages": total_pages,
        "per_page": per_page,
        "total_countries":Country.query.count(),
        
    }
  return json.dumps (response,sort_keys=False)


#search by id
@country_bp.route('/country/<int:country_id>', methods=['GET'])
def get_countryneighbours(country_id):
    country = Country.query.get(country_id)
    if country:
        country_list=[]
        country_list.append({"id":country.id, "name":country.name,"cca": country.cca, "currency_code": country.currency_code, "currency":country.currency,"capital": country.capital,"region":country.region,"subregion":country.subregion,"area":country.area,"map_url":country.map_url, "population":country.population,"flag_url":country.flag_url,"created_at":country.created_at,"updated_at":country.updated_at})
        return  json.dumps({"message":"country list","data":{"list":country_list}},sort_keys=False)
    else:
        return jsonify({'error': 'Country not found'})
@country_bp.route('/country/<int:country_id>/neighbours', methods=['GET'])


#neighbors class
def get_country_neighbors(country_id):
    country = Country.query.get(country_id)
    
    if country:
        neighbors = country.neighbors
        countr=[]
        for coun in neighbors:
           countr.append({"id":coun.id, "name": coun.name,"cca":coun.cca,"currency_code":coun.currency_code,"currency":coun.currency,"capital"
:coun.capital})
        return json.dumps({"message":"Country neighbours","data":{"list":countr}},sort_keys=False)

    else:
        return jsonify({'error': 'no neighbour found'})

if __name__ == '__main__':
   app.run()
