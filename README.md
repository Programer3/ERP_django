# College-ERP

A college management system built using Django framework. It is designed for interactions between students and teachers. Features include attendance, marks and time table.

## Installation

Creating a python virtual enviroment to not loose or impact other projects:

```bash
python -m venv env
source env/bin/activate

Now swithching betwennn any enviroments with name Name1 & name2

```bash
python -m venv Name1
source Name1/bin/activate
python -m venv Name2
source Name2/bin/activate


Python and Django need to be installed
Additional libraries should be imported as well
```bash
pip install django
pip install djangorestframework
pip install djoser
Just run this command pip install -r requirements.txt in main project directory
```

## Usage

Go to the College-ERP folder and run

```bash
python manage.py runserver
```

Then go to the browser and enter the url **<http://127.0.0.1:8000/>**

## Login

The login page is common for students and teachers.  
The username is their name and password for everyone is 'project123'.

The student added will be given the credentials :

Username- Name  

Password- USN

The teacher added will be given the credentials :

Username- Name

Password- Name

Example usernames:  
student- 'samarth'  
teacher- 'trisila'  

You can access the django admin page at **<http://127.0.0.1:8000/admin>** and login with username 'admin' and the above password.

Also a new admin user can be created using

```bash
python manage.py createsuperuser
```

## Users

New students and teachers can be added through the admin page. A new user needs to be created for each.

The admin page is used to modify all tables such as Students, Teachers, Departments, Courses, Classes etc.

**For more details regarding the system and features please refer the reports included.**

## Update (29/11/2020)

Added method to reset attendance time range in Django Admin page.

![alt_text](https://i.imgur.com/0xOWmUZ.png)

This is present in Django Admin -> Attendance (<http://127.0.0.1:8000/admin/info/attendanceclass/>).  
Start Date: Start Date of Attendance period  
End Date: End Date of Attendance period

This will delete all present attendance data and create new attendance objects for the given time range.

## Screenshots

### Teacher Page

![alt text](https://imgur.com/pMAoEbG.png)

![alt text](https://imgur.com/ZiQ3RRA.png)

![alt text](https://imgur.com/i025CJW.png)

![alt text](https://imgur.com/HQlLYmC.png)

![alt text](https://imgur.com/j6RyBmU.png)

![alt text](https://imgur.com/xIKEMvQ.png)

![alt text](https://imgur.com/4Rl7Fpv.png)

### Student Page

![alt text](https://imgur.com/isL9cjz.png)

![alt text](https://imgur.com/5pzl7m3.png)

![alt text](https://imgur.com/7zWhHZx.png)

![alt text](https://imgur.com/fu7gxk8.png)

![alt text](https://imgur.com/NZqU268.png)

### Admin Page

![alt text](https://imgur.com/sDvDc9N.png)

![alt text](https://imgur.com/tMKWx6f.png)

![alt text](https://imgur.com/PvCsNeB.png)

//Secret key should ke kept secret in a file named ".env" file which is ignored by .gitignore//  
therefore install a package named "environ" via "pip install environ" command on CLI to read
the contents of .env file.
In the same directory of settings.py create a file named ".env" and then put your secret key there
and all the other sensitive passwords which an attacker might misuse such as creating own hashes for website using
secret key.
Also DEBUG should be kept false during production

CONTENTS OF .env file should look like:

SECRET_KEY=xyz
DEBUG=FALSE

(remember not to use any space across equals-to("==") sign and also write everything without quotes)
