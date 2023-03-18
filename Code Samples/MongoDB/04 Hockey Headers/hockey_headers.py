from bs4 import BeautifulSoup
import requests
import pymongo

connection = 'mongodb://localhost:27017'
client = pymongo.MongoClient(connection)

db = client.nhl_db
collection = db.articles

url = 'https://www.nhl.com/news'

response = requests.get(url)
soup = BeautifulSoup(response.text, 'lxml')

results = soup.find_all('div', class_='article-item__top')

for result in results:
    header = result.find('h1', class_='article-item__headline').text
    subheader = result.find('h2', class_='article-item__subheader').text
    datetime = result.find('span', class_='article-item__date')['data-date']
    date = datetime.split('T')[0]

    print('########################')
    print(header)
    print(subheader)
    print(date)

    post = {
        'header': header,
        'subheader': subheader,
        'date': date,
    }

    collection.insert_one(post)

articles = db.articles.find()
for article in articles:
    print(article)
