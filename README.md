# README - Bamboo Tech TEST

## Background
Bamboo have decided to open an online bank, Bambank, with its own currency, Bambeuros.
The new bank will run a promotion giving all new customers 100 free Bambeuros when they
sign up.
## Requirements
We would like you to build a prototype web application that allows users to:
- Create an account / log in
- View their current balance and transactions
- Send Bambeuros to other users

## Solution 
I spent about 2 hours writing this solution. The set up took a little longer than expected as I rarely set up new rails projects from scratch and had not done so in a while so I did not achieve a full solution. To use the application bundle and type `rails s` into the command line and then visit `localhost:3000` to use the app. 

## Next Steps 
For the final part of the solution, allowing users to transfer Bambeuros, a transfer model would have been created with a to and from user and a value. The Balance would have been updated by the wallet model, with validations that the users wallet had enough balance to fund the tranaction. 
