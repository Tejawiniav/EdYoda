import mysql.connector

mydb = mysql.connector.connect(host="localhost", user="root", passwd="root", database="EdYoda")

mycursor = mydb.cursor()
#Let the Young chap be: ccc
mycursor.execute("SELECT Ename FROM Elder WHERE Elder.Eid in(SELECT Eid FROM YCaresE WHERE Yid in (SELECT Yid FROM Youth WHERE Yname='ccc'))");

for i in mycursor:
    print(i)
