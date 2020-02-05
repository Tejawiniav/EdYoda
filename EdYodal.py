import mysql.connector

mydb = mysql.connector.connect(host="localhost", user="root", passwd="root", database="EdYoda")

mycursor = mydb.cursor()
#Let the Young chap be: ccc
mycursor.execute("SELECT Ename FROM Elder WHERE Elder.Eid in(SELECT Eid FROM YCaresE WHERE Yid in (SELECT Yid FROM Youth WHERE Yname='ccc'))");

for i in mycursor:
    print(i)
   




You're using code navigation to jump to definitions or references.

    
    import mysql.connector

mydb = mysql.connector.connect(host="localhost", user="root", passwd="root", database="EdYoda")

mycursor = mydb.cursor()
mycursor.execute("SELECT Yname,Ename FROM Youth,Elder,YCaresE WHERE Youth.Yid=YCaresE.Yid AND Elder.Eid=YCaresE.Eid;")
for i in mycursor:
    print(i)
