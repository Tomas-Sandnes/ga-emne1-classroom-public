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
                "SELECT Name, HeadOfState "
                "FROM country "
                "WHERE Continent ='Europe' "
                "ORDER BY Name ASC "
            )
            cursor.execute(sql)
            rows = cursor.fetchall()
            if not rows:
                print("No countries found.")
            else:
                for name, head_of_state in rows:
                    print(f"{name}: {head_of_state}")
except Error as e:
    print(f"Error using MySQL: {e}")