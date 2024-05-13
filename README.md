# RAILS ON RUBY DATABASE WITH MySQL(Postgress)
In this i have hosted a postgress Database on render which was used for storing all the 
  * user details->Email
  * user logs
  * Tabs Data
  * Time Intervals
  * Individual website related data based on the day
The schema of my project looks like this
  * User Table->email
  * Tabs Table->sessions,summarytime,tab data,day(tab data containing the specific dates with the specific tab with the sepcific number of sessions)(referenced below)
  * Day  Table->tab data containing the specific dates with the specific tab with the sepcific number of sessions
  * timeintervals Table->time when the tab was open(created but not yet implemented)
# I have also created API's and Controllers
  * COntrollers for Updatingtabs,Updating Users
  * API for creating users(created and working but didnt use it in the final deploy)
# Steps to run
  * have ruby installed.
  * download this repo locally
  * If you have Postgress installed then u can directly go the next step..if not, i suggest u follow 'gorails.com/setup' and go to the databse setup part and follow accordingly
  * run 'rails server'
# you can even run it with MySQL But it would require conversion of Database, you can do it using 
  rails db:system:change --to=mysql
  but you will also need to update ur sql db settings in config/database.yaml file 

