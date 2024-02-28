Scenario: Readme

Given Extension: Gherkin PDF is installed
When  Extension: Gherkin PDF DETAILS is open 
Then DETAILS page includes 
* Extension Features
* Installation Instructions
* Usage Instructions
* License information
