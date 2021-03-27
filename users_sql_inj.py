import sqlite3

conn = sqlite3.connect("users_db.db")

# bartenev test
# ivanov test2
# petrov test3

user_name = input('Введите имя: ')
user_password = input('Введите пароль: ')

select_query = f"SELECT * FROM users WHERE user_name = '{user_name}' AND user_password = '{user_password}'"

cursor = conn.cursor()
cursor.execute(select_query)
data = cursor.fetchone()

if (data):
    print("Успешный вход!")
    # print(data)
else:
    print("Вход не осуществлен!")

conn.commit()
conn.close()

# ' OR 1=1 --

# SELECT * FROM users WHERE user_name = 'jack123' AND user_password = '' OR 1=1 --'