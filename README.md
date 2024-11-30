# College-ERP

A college management system built using Django framework. It is designed for interactions between students and teachers. Features include attendance, marks and time table.

Original Inspiration and Most of the Source Code : [College-ERP](https://github.com/samarth-p/College-ERP) and its pull requests.

# TABLE OF CONTENTS

- [College-ERP](#college-erp)
- [TABLE OF CONTENTS](#table-of-contents)
  - [Features](#features)
  - [Installation](#installation)
  - [Manual Installation](#manual-installation)
  - [Usage](#usage)
  - [Example usernames](#example-usernames)
  - [Admin](#admin)
  - [Users](#users)
  - [Database](#database)
  - [Original Readme text](#original-readme-text)
  - [Update (29/11/2020)](#update-29112020)
  - [Screenshots](#screenshots)
    - [Teacher Page](#teacher-page)
    - [Student Page](#student-page)
    - [Admin Page](#admin-page)
  - [Contributing](#contributing)
  - [Authors](#authors)
  - [License](#license)

## Features

- Attendance
- Marks
- Time Table
- Student and Teacher Login
- Admin Page

## Installation

1. Download the Zip from the green "Code" button and then Unzip it,

    OR

    use the following command in desired folder to clone the repository:

    ```bash
    git clone https://github.com/Programer3/ERP_django.git
    ```

1. Install [Python](https://www.python.org/downloads/) from here then,

2. > #### MAKE SURE TO TICK "ADD TO ENVIROMENT VARIABLES" DURING INSTALLATION OF PYTHON

3. Now Navigate to the project directory and do the following:

4. Create a python virtual enviroment to not loose or impact other projects:

6. run `venv.bat` file for windows users, then activate that newwely created enviroment

This Script will automatically Install all Additional libraries.

Now the terminal will look like this :

```bash
(your_virtual_env) D:\CODES\python\ERP_django>
```

## Manual Installation

5. Create a virtual enviroment using `python -m venv virtualenvname`

6. activate/deactivate manually use these in Windows Command Prompt after creating virtual enviroment:

    ```bash
    D:\ERP_django> your_virtual_env\Scripts\activate
    ```

    ```bash
    (your_virtual_env) D:\ERP_django> deactivate
    ```

7. Install the requirements using `pip install -r requirements.txt`

## Usage

The login page is common for students and teachers.  

Go to the ERP_django root folder and run

```bash
python manage.py runserver
```

👆 to run the ERP server

Then go to the browser and enter the url for students and teachers:  **<http://127.0.0.1:8000/>**

👆 to access the login page

The username is their name and password for everyone (including admin) is 'project123' by default. (FOR DEVELOPMENT ONLY)

The student added will be given the credentials to login according to following format:

Username- Name

Password- USN

The teacher added will be given the credentials to login as following format:

Username- Name

Password- Name

## Example usernames
>
> student- samarth, Anna  
> teacher- trisila, Guru  
> admin- admin

## Admin

The admin page is common for students and teachers.

You can access the django admin page at **<http://127.0.0.1:8000/admin>**

default admin credentials are:

Username- admin

Password- project123

Also a new admin user can be created using

```bash
python manage.py createsuperuser
```

👆 this can be also used to add new student and teacher/ faculty members details.

[#TIP] Don't forget your PASSWORDS

## Users

New students and teachers can be added through the admin page. A new user needs to be created for each of.

The admin page is used to modify all tables such as Students, Teachers, Departments, Courses, Classes etc.

**For more details regarding the system and features please refer the reports included.**

## Database

The database used is sqlite3.

The database file is stored in the ERP_django root folder.

## Original Readme text

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

**Secret key and Debug value should ke kept secret in a file named ".env" file which is ignored by .gitignore and can be read using "environ" package coded in**  

**In the same directory of settings.py create a file named ".env" and then put your secret key, Debug value and all the other sensitive passwords which an attacker might misuse such as creating own hashes for website, like :  

>SECRET_KEY=xyz  
>DEBUG=FALSE

**Also DEBUG should be kept false during production**  

(remember not to use any space across equals-to("==") sign and also write everything without quotes)

To stop git from tracking your virtualenviroment cfg file once its already being tracked use:

```bash
git rm --cached virtualenvname/pyvenv.cfg
```

```bash
git commit -m "Stop tracking virtualenvname/pyvenv.cfg"
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.

Please make sure to update tests as appropriate.

Currenntly, the project is in development phase and is not ready for production.

## Authors

- [Aman (Maintainer)](https://github.com/Programer3)
- [Ujjwal](https://github.com/ujjwalshriv3)
- [Krishna](https://github.com/krishnasingh34)

## License

[MIT](https://choosealicense.com/licenses/mit/)
