import mysql.connector
from config_local import DB_CONFIG

def get_cities(code):
    sql = (
        "SELECT Name, Population "
        "FROM city "
        "WHERE CountryCode = %s "
        "ORDER BY Name ASC"
    )
    with mysql.connector.connect(**DB_CONFIG) as connection:
        with connection.cursor() as cursor:
            cursor.execute(sql, (code,))
            return cursor.fetchall()
