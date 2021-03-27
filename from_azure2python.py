import psycopg2

conn = psycopg2.connect(
    "dbname='' user='' host='' password=''"
)
cursor = conn.cursor()
cursor.execute("SELECT * FROM students")
# cursor.execute("SELECT id, nickname FROM students")

for i in cursor.fetchall():
    print(i)

# [print(row) for row in cursor.fetchall()]

# for id, nickname in cursor.fetchall():
#     print(f"id: {id}, Nick: {nickname}")

# conn.commit()
conn.close()