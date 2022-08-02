""" import statements """
from pymongo import MongoClient

# MongoDB connection string 
url = "mongodb+srv://admin:admin@cluster0.6nvhtl1.mongodb.net/pytech"

# connect to the MongoDB cluster 
client = MongoClient(url)

# connect pytech database
db = client.pytech

# Tyson Todd's data document 
Tyson = {
    "student_id": "1007",
    "first_name": "Tyson",
    "last_name": "Todd",
    "enrollments": [
        {
            "term": "Session 2",
            "gpa": "4.0",
            "start_date": "June 6, 2022",
            "end_date": "August 14, 2022",
            "courses": [
                {
                    "course_id": "CSD101",
                    "description": "Intro to Python",
                    "instructor": "Dr. Wu",
                    "grade": "A"
                },
                {
                    "course_id": "CSD102",
                    "description": "Intro to SQL",
                    "instructor": "Dr. Cavanaugh",
                    "grade": "A"
                }
            ]
        }
    ]

}
brayson = {
    "student_id": "1008",
    "first_name": "Brayson",
    "last_name": "Todd",
    "enrollments": [
        {
            "term": "Session 2",
            "gpa": "3.52",
            "start_date": "June 6, 2022",
            "end_date": "August 14, 2022",
            "courses": [
                {
                    "course_id": "CSD101",
                    "description": "Intro to Python",
                    "instructor": "Dr. Wu",
                    "grade": "B"
                },
                {
                    "course_id": "CSD102",
                    "description": "Intro to SQL",
                    "instructor": "Dr. Cavanaugh",
                    "grade": "A"
                }
            ]
        }
    ]
}

# Frodo Baggins data document
xavier = {
    "student_id": "1009",
    "first_name": "Xavier",
    "last_name": "Todd",
    "enrollments": [
        {
            "term": "Session 2",
            "gpa": "3.0",
            "start_date": "June 6, 2022",
            "end_date": "August 14, 2022",
            "courses": [
                {
                    "course_id": "CSD101",
                    "description": "Intro to Python",
                    "instructor": "Dr. Wu",
                    "grade": "B"
                },
                {
                    "course_id": "CSD102",
                    "description": "Intro to SQL",
                    "instructor": "Dr. Cavanaugh",
                    "grade": "B"
                }
            ]
        }
    ]
}

# get the students collection 
students = db.students

# insert statements with output 
print("\n  -- INSERT STATEMENTS --")
tyson_student_id = students.insert_one(tyson).inserted_id
print("  Inserted student record Tyson Todd into the students collection with document_id " + str(tyson_student_id))

brayson_student_id = students.insert_one(brayson).inserted_id
print("  Inserted student record Brayson Todd into the students collection with document_id " + str(brayson_student_id))

xavier_student_id = students.insert_one(xavier).inserted_id
print("  Inserted student record Xavier Todd into the students collection with document_id " + str(xavier_student_id))

input("\n\n  End of program, press any key to exit... ")
