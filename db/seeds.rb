# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bob=User.create(email: "bob@gmail.com", password: "12345678", password_confirmation: "12345678")
joe=User.create(email: "joe@gmail.com", password: "12345678", password_confirmation: "12345678")
mary=User.create(email: "mary@gmail.com", password: "12345678", password_confirmation: "12345678")
dave=User.create(email: "dave@gmail.com", password: "12345678", password_confirmation: "12345678")



bob.things.create(name: "Welcome to the Johnsons", category: "bar", 
  why: "great dive bar, good music, PBR special", 
  street: "123 Rivington Street", city: "New York", state: "NY", zip_code: "10002")
bob.things.create(name: "Crocodile Lounge", category: "bar", 
  why: "free personal pizza with beer during happy hour",
  street: "325 E. 14th Street", city: "New York", state: "NY", zip_code: "10003" )
bob.things.create(name: "Ippudo", category: "restaurant", 
  why: "best ramen in NY - crazy long wait but get the shortribs, 
  cheesesteak and Shiromaru Hakata", street: "65 4th Avenue", 
  city: "New York", state: "NY", zip_code: "10003")
bob.things.create(name: "Therapeia", category: "health", 
  why: "nice clean space, great location, best hot stone massage ever",
  street: "1801 Bush Street", city: "San Francisco", state: "CA", zip_code: "94109")

joe.things.create(name: "Chelsea Piers Driving Range", category: "fitness", 
  why: "best range in NYC", street: "59 Chelsea Piers", city: "New York", 
  state: "NY", zip_code: "10011")
joe.things.create(name: "The Pour House", category: "bar", why: "cheap food and drinks, good music",
  street: "907 Boylston Street", city: "Boston", state: "MA", zip_code: "02115")
joe.things.create(name: "Kenneth Rice, MD", category: "doctor", 
  why: "kind and knowledgable cardiologist with Brigham and Women's",
  street: "1180 Beacon Street, Suite 7C", 
  city: "Brookline", state: "MA", zip_code: "02446")
joe.things.create(name: "Bottega", category: "restaurant", why: "amazing Italian food in heart of Napa,
  get carbonara and olive oil cake", street: "6525 Washington Street",
  city: "Yountville", state: "CA", zip_code: "94599")

mary.things.create(name: "TeaWay", category: "cafe", why: "best boba tea in SF",
  street: "2250 Irving Street", city: "San Francisco", state: "CA", zip_code: "94122")
mary.things.create(name: "PizzaHacker", category: "restaurant", why: "closest thing
  to NY style thin crust pizza in SF", street: "3299 Mission Street", city: "San Francisco",
  state: "CA", zip_code: "94110")
mary.things.create(name: "ImagiKnit", category: "crafts", why: "great selection of yarns and classes",
  street: "3897 18th Street", city: "San Francisco", state: "CA", zip_code: "94114")
mary.things.create(name: "Lucien Crochet Sancerre", category: "wine", why: "tasty bottle of white wine,
  not too expensive", street: "399 Lafayette Street", city: "New York", state: "NY", zip_code: "10003")

dave.things.create(name: "Murray's Cavemaster Little Big Apple", category: "food", why: "Amazing triple-creme cow's milk cheese,
  buttery and slightly fruity.  Only available in Fall", street: "254 Bleecker Street",
  city: "New York", state: "NY", zip_code: "10014" )
dave.things.create(name: "Bagel Hole", category: "food", why: "best bagel in Brooklyn", 
  street: "400 7th Avenue", city: "brooklyn", state: "ny", zip_code: "11215")
dave.things.create(name: "Dashing Diva", category: "beauty", why:"clean, cute nail place, uses
  autoclave to sterilize instruments, ask for Vivian for pedicure", street: "183 7th Avenue",
  city: "Brooklyn", state: "NY", zip_code: "11215")
dave.things.create(name: "Silk Hands and Feet", category: "beauty", why: "decent SF pedicure,
  use individual bowls and la-z boys instead of typical pedicure chair",
  street: "1425 Franklin Street", city: "San Francisco", state: "CA", zip_code: "94109")