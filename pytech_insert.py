from pymongo import MongoClient
url = "mongodb+srv://admin:admin@cluster0.6nvhtl1.mongodb.net/pytech"
client = MongoClient (url)
db = client.pytech
tyson = {
    "student_id": "1007",
    "first_name": "Tyson",
    "last_name": "Todd",
    "enrollments": [
        {
            "term": "Session 2",
            "gpa": "4.0",
            "start_date": "July 1, 2022",
            "end_date": "September 1, 2022",
            "courses": [
                {
                    "course_id": "CSD 310",
                    "description": "Intro to Python",
                    "instructor": "Dr. Wu",
                    "grade": "A"
                },
                {
                    "course_id": "CSD 315",
                    "description": "Programming with C+",
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
            "gpa": "3.7",
            "start_date": "July 1, 2022",
            "end_date": "September 1, 2022",
            "courses": [
                {
                    "course_id": "CSD 310",
                    "description": "Intro to Python",
                    "instructor": "Dr. Wu",
                    "grade": "A"
                },
                {
                    "course_id": "CSD 315",
                    "description": "Programming with C+",
                    "instructor": "Dr. Cavanaugh",
                    "grade": "b"
                }
            ]
        }
    ]
}
xavier = {
    "student_id": "1009",
    "first_name": "Xavier",
    "last_name": "Todd",
    "enrollments": [
        {
            "term": "Session 2",
            "gpa": "3.5",
            "start_date": "July 1, 2022",
            "end_date": "September 1, 2022",
            "courses": [
                {
                    "course_id": "CSD 310",
                    "description": "Intro to Python",
                    "instructor": "Dr. Wu",
                    "grade": "B"
                },
                {
                    "course_id": "CSD 315",
                    "description": "Programming with C+",
                    "instructor": "Dr. Cavanaugh",
                    "grade": "A"
                }
            ]
        }
    ]
} 
students = db.students
print ("\n -- INSERT STATEMENTS --")
tyson_student_id = students.insert_one(tyson).inserted_id
print ("  Inserted student record Tyson Todd into the students collection with document_id" + str (tyson_student_id))
brayson_student_id = students.insert_one(brayson).inserted_id
print ("  Inserted student record Brayson Todd into the students collection with document_id" + str (brayson_student_id))
xavier_student_id = students.insert_one(xavier).inserted_id
print ("  Inserted student record Tyson Todd into the students collection with document_id" + str (xavier_student_id))
input("\n\n End of program, press any key to exit...")
                