import sqlite3

#get person data from user

firstName = raw_input("Enter your first name:")

lastName = raw_input("Enter your last name:")

age = int(raw_input("Enter your age: "))

#execute insert statement for supplied person data

with sqlite3.connect('test_database.db')as connection:

    c=connection.cursor()

line="INSERT INTO People Values('"+firstName + "', '"+lastName + "', "+str(age) +")"

c.execute(line)

print(line)