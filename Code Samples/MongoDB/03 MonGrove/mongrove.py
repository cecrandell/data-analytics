import pymongo
import datetime

connection = 'mongodb://localhost:27017'
client = pymongo.MongoClient(connection)

db = client.fruits_db
collection = db.fruits_db

post = {
    'vendor': 'Eastside Market',
    'fruit': 'Watermelon',
    'quantity': 10,
    'ripeness': 2,
    'date': datetime.datetime.utcnow()
}

collection.insert_one(post)

vendor = input('Vendor: ')
fruit = input('Fruit: ')
quantity = input('Quantity: ')
ripeness = input('Ripeness (1 = unripe; 2 = ripe, 3 = over-ripe: ')

user_post = {
    'vendor': vendor,
    'fruit': fruit,
    'quantity': quantity,
    'ripeness': ripeness,
    'date': datetime.datetime.utcnow()
}

collection.insert_one(user_post)

results = collection.find()
for result in results:
    print(result)
