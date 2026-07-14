from flask import Flask, jsonify
import mysql.connector

app = Flask(__name__)

db_config = {
    "host": "<RDS_ENDPOINT>",
    "user": "<DB_USERNAME>",
    "password": "<DB_PASSWORD>",
    "database": "employee_db"
}

@app.route("/")
def home():
    return "Employee Management API is Running!"

@app.route("/employees")
def get_employees():
    connection = mysql.connector.connect(**db_config)
    cursor = connection.cursor(dictionary=True)
    cursor.execute("SELECT * FROM employees")
    employees = cursor.fetchall()
    cursor.close()
    connection.close()
    return jsonify(employees)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
