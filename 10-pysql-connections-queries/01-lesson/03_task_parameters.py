import mysql.connector
from mysql.connector import Error

try:
    print("Connecting to the database...")
    with mysql.connector.connect(
        host="localhost",
        port=3306,
        user="root",
        password="gokstad",
        database="world"
    ) as connection:
        print("Connected to MySQL!")
        city_name = input("Enter city name: ")
        with connection.cursor() as cursor:
            sql = (
                "SELECT Name, Population, CountryCode "
                "FROM city "
                "WHERE Name = %s"
            )
            cursor.execute(sql, (city_name,))
            rows = cursor.fetchall()
            if not rows:
                print("No city found.")
            else:
                for name, pop, country in rows:
                    print(f"{name}, {pop}, {country}")
except Error as e:
    print(f"Error using MySQL: {e}")