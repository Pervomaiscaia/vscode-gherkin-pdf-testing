Feature: Online Banking
As a customer
I want to be able to access and manage my bank accounts online
So that I can perform banking transactions conveniently and securely

Scenario: Login with valid credentials
Given I am on the login page of the online banking website
When I enter a valid username and password
And I click on the "Login" button
Then I should see a welcome message with my name
And I should see a dashboard with my account summary

Scenario: Login with invalid credentials
Given I am on the login page of the online banking website
When I enter an invalid username or password
And I click on the "Login" button
Then I should see an error message that the credentials are incorrect
And I should not be logged in to the website

Scenario: Logout from the website
Given I am logged in to the online banking website
When I click on the "Logout" button
Then I should see a confirmation message that I have logged out
And I should be redirected to the login page of the website

Scenario: View account balance
Given I am logged in to the online banking website
When I click on the "Accounts" tab
Then I should see a list of my accounts and their balances
And I should see the total balance of all my accounts

Scenario: Transfer money between accounts
Given I am logged in to the online banking website
And I have two or more accounts with sufficient funds
When I click on the "Transfer" tab
And I select the source and destination accounts
And I enter the amount and description of the transfer
And I click on the "Submit" button
Then I should see a confirmation message that the transfer has been completed
And I should see the updated balances of the source and destination accounts

Scenario: Transfer money to another person
Given I am logged in to the online banking website
And I have an account with sufficient funds
When I click on the "Pay" tab
And I select the "Pay Someone" option
And I enter the recipient's name, email, and phone number
And I enter the amount and description of the payment
And I click on the "Submit" button
Then I should see a confirmation message that the payment has been sent
And I should see the updated balance of my account

Scenario: Request money from another person
Given I am logged in to the online banking website
When I click on the "Pay" tab
And I select the "Request Money" option
And I enter the requester's name, email, and phone number
And I enter the amount and description of the request
And I click on the "Submit" button
Then I should see a confirmation message that the request has been sent
And I should see the pending request in my transaction history

Scenario: Accept or decline a money request
Given I am logged in to the online banking website
And I have received a money request from another person
When I click on the "Pay" tab
And I select the "Pending Requests" option
And I click on the "Accept" or "Decline" button for the request
Then I should see a confirmation message that the request has been accepted or declined
And I should see the updated balance of my account if I accepted the request

Scenario: View transaction history
Given I am logged in to the online banking website
When I click on the "History" tab
Then I should see a list of my transactions with their dates, amounts, and descriptions
And I should be able to filter the transactions by date, type, or account

Scenario: Download transaction statement
Given I am logged in to the online banking website
And I have viewed my transaction history
When I click on the "Download" button
Then I should see a dialog box to choose the format and location of the statement
And I should be able to download the statement as a PDF or CSV file

Scenario: Deposit replenishment
Given I am logged in to the online banking website
And I have one or more deposits
When I select what deposit I want to refill
And I click on the "Replenishment" button
And I enter the replenishment amount in the amount field 
Then I should see the updated balance of my deposit account 

Scenario: Currency conversion
Given I am logged in to the online banking website
And I have accounts in two or more currencies
When I click on the "Conversion" button
And I select the account and amount of currency selling
And I select the account of currency buying
Then I should see the amount of currency buying is calculated automatically
And I should see updated balances of my accounts
