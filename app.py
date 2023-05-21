from flask import Flask, request,jsonify,Response
from flask_sqlalchemy import SQLAlchemy
from flask_migrate import Migrate

import json

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://root:shubh@localhost/countrydb' # SQLite database

db = SQLAlchemy(app)
Migrate(app, db, compare_type=True)
with app.app_context():
 from routes import country_bp
 app.register_blueprint(country_bp)

#from country import Country
#from country import Neighbor
    #def __init__(self, name, cca, currency_code, currency, capital, region, subregion, area, map_url, population, flag_url, created_at,updated_at):
        #self.name = name
        #self.cca=cca
        #self.currency_code=currency_code
        #self.currency=currency
        #self.capital = capital
      #  self.region=region 
       # self.subregion=subregion
      # self.area=area
     #   self.map_url=map_url
       # self.population = population
      #  self.flag_url=flag_url
     #self.created_at=created_at
     ##  self.updated_at=updated_at


    #return f'Name:{name},cca:{self.cca}, currency_code:{self.currency_code}, currency:{self.currency}, capital:{self.capital}, region:{self.region}, subregion: {self.subregion}, area:{self.area}, map_url:{self.map_url}, population:{self.population}, flag_url:{self.map_url}, created_at: {self.created_at},updated_at: {self.created_at}'
 #def add_country():
 #   data = request.get_json()
  #  name = data['name']
   # capital = data['capital']
    #population = data['population']

    #country = Country(name, capital, population)
    #nam="India"
    #capial="Delhi"
    #ppulation=100
    #entry=Country(name=nam,capital=capial,population=ppulation)
    #db.session.add(entry)
    #db.session.add(country)
   # db.session.commit()
#return 'Country added successfully.'

if __name__ == '__main__':
   app.run()
