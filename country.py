
from app import db
class Country(db.Model):
    __tablename__="country"
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(50))
    cca=db.Column(db.String(25),nullable=False)
    currency_code=db.Column(db.String(25),nullable=False)
    currency=db.Column(db.String(50),nullable=False)
    capital=db.Column(db.String(50),nullable=False)
    region=db.Column(db.String(60),nullable=False)
    subregion=db.Column(db.String(100),nullable=False)
    area=db.Column(db.BigInteger,nullable=False)
    map_url=db.Column(db.String(300),nullable=False)
    population=db.Column(db.BigInteger,nullable=False)
    flag_url=db.Column(db.String(300),nullable=False)
    created_at=db.Column(db.String(300),nullable=False)
    updated_at=db.Column(db.String(300),nullable=False)
    neighbors = db.relationship('CountryNeighbour', backref='country',lazy=True)
class CountryNeighbour(db.Model):
    __tablename__="country_neighbour"
    id=db.Column(db.Integer,primary_key=True)
    country_id = db.Column(db.Integer, db.ForeignKey('country.id', ondelete='CASCADE'))
    name = db.Column(db.String(50))
    cca=db.Column(db.String(25),nullable=False)
    currency_code=db.Column(db.String(25),nullable=False)
    currency=db.Column(db.String(50),nullable=False)
    capital=db.Column(db.String(50),nullable=False)
    