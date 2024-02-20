Feature: Scenario Name in the Feature file 
As a Quality Engineer 
I want gherkin pdf to support a placeholders for Scenario Name in the Scenario Footer

Scenario: Scenario Name in the feature file with some description
Given Scenario Footer Template includes the following text
""" <br><table><th>{{SCENARIO_NAME}}<br><strong>
    Verification Result (enter Pass or Fail)</strong>&nbsp;</th><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr></table> """
Given Scenario Name in the feature file contains some description
When the file is exported
Then Scenario Name in the Scenario Footer contains the specified description

Scenario: Empty Scenario Name in the feature file 
Given Scenario Footer Template includes the following text
""" <br><table><th>{{SCENARIO_NAME}}<br><strong>
    Verification Result (enter Pass or Fail)</strong>&nbsp;</th><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr></table> """
Given Scenario Name in the feature file is empty
When the file is exported
Then Scenario Name in the Scenario Footer is empty

Scenario: Scenario Name in the feature file is not unigue
Given Scenario Footer Template includes the following text
""" <br><table><th>{{SCENARIO_NAME}}<br><strong>
    Verification Result (enter Pass or Fail)</strong>&nbsp;</th><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr></table> """
Given Multiple Scenarios in the feature file have the same Scenario Name
When the file is exported
Then all Scenario Names in the Scenario Footer are displayed as is

Scenario: Multiline Scenario Name (over 256 characters)
Given Scenario Footer Template includes the following text
""" <br><table><th>{{SCENARIO_NAME}}<br><strong>
    Verification Result (enter Pass or Fail)</strong>&nbsp;</th><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr></table> """
Given Scenario Name in the feature file contains text over 256 characters 
When the file is exported
Then Scenario Name in the Scenario Footer contains the specified text in full table width 

