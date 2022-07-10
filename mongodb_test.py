from pymongo import MongoClient
url = "mongodb+srv://admin:admin@cluster0.6nvhtl1.mongodb.net/pytech"
client = MongoClient (url)
db = client.pytech
print("\n -- Pytech Collection List --")
input("\n\n End of program, press any key to exit...")
