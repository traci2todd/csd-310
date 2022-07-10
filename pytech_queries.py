from pymongo import MongoClient
url = "mongodb+srv://admin:admin@cluster0.6nvhtl1.mongodb.net/pytech"
client = MongoClient (url)
db = client.pytech
students = db.students
student_list = students.find ({})
print("\n -- DISPLAYING STUDENTS DOCUMENTS FROM find () QUERY --")
for doc in student_list:
    print("--Student ID: " + doc["student_id"] + "\n First Name: " + doc["first_name"] + "\n Last Name: " + doc ["last_name"] + "\n")
brayson = students.find_one ({"student_id": "1007"})
print("\n -- DISPLAYING STUDENT DOCUMENTS FROM find_one() QUERY --")
print("  Student ID: " + tyson["student_id"] = "\n First Name: " + tyson["first_name"] + "\n Last Name: " + tyson["last_name"] + "\n")
input("\n\n End of program, press any key to continue...")