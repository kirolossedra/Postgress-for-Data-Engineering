# Postgress-for-Data-Engineering


had python incomaptible with version so I did this sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update



Depending on the shell you are using (e.g., bash, zsh), you will need to edit the appropriate configuration file.

For bash (default in many distributions):

bash
Copy code
nano ~/.bashrc
For zsh:

bash
Copy code
nano ~/.zshrc
Step 3: Add the Alias
Scroll to the bottom of the file and add the following line:

bash
Copy code
alias pgadmin4='/usr/pgadmin4/bin/pgadmin4'



![image](https://github.com/user-attachments/assets/8afbb004-1955-464b-8650-4efa3561ab59)



![image](https://github.com/user-attachments/assets/503c17b5-eda3-45dd-963c-ad65e5054645)



Step 1: Open pgAdmin
Launch pgAdmin if you haven't done so already:
bash
Copy code
pgadmin4
Step 2: Add a New Server Connection
In the pgAdmin interface, look for the "Servers" section on the left sidebar.

Right-click on "Servers" (it might be greyed out, but you can still right-click).

Select "Create" > "Server...".

Step 3: Configure the Server Connection
In the Create - Server dialog, you will have two tabs: General and Connection.
General Tab:
Name: Enter a name for your server connection (e.g., Local PostgreSQL).
Connection Tab:
Host: Enter localhost or 127.0.0.1.
Port: The default port for PostgreSQL is 5432. If you've changed it, enter the appropriate port number.
Username: Use postgres as the default username.
Password: Enter the password you set for the postgres user (if you haven’t set one, you can leave it blank for now).
Step 4: Save the Server Connection
After filling in the details, click Save.
Step 5: Verify the Connection
Once you save the connection, it should appear under the Servers section in the sidebar.

Click on the newly created server to expand it. You should see options for Databases, Schemas, etc.

Step 6: Create the COFFEE Database
Right-click on the "Databases" node under your new server connection.
Select Create > Database....
Enter COFFEE as the name and save it.
Step 7: Create Tables in the Database
Now that you have the COFFEE database created, you can follow the earlier instructions to create your ERD and add tables for sales transactions and products.


In case password needs to be changed this command can be employed

sudo -u postgres psql

\password postgres


![image](https://github.com/user-attachments/assets/c344df38-a682-4a13-9c1b-f3b1aec784ee)



I was trying to import a csv, but it turns out the csv is created in a shitty format that has an extra row that is not interpretted by postgres so I used the query instead in the fix.sql

