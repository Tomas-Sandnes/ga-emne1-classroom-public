# try:
#     import mysql.connector
# except:
#     print("Importen mislyktes.")
# else:
#     print("MySQL-pakka er klar.")

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
        with connection.cursor() as cursor:
            sql = (
                "SELECT Name, Population "
                "FROM city "
                "WHERE CountryCode ='NOR'"
            )
            cursor.execute(sql)
            rows = cursor.fetchall()
            if not rows:
                print("No cities found.")
            else:
                for name, population in rows:
                    print(f"{name}: {population}")
except Error as e:
    print(f"Error using MySQL: {e}")