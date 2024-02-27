Feature: Scenario Name in the Scenario Footer Template
As a Quality Engineer 
I want gherkin pdf to support a placeholders for Scenario Name in the Scenario Footer

Scenario: Scenario Footer Template with placeholder for Scenario Name
Given Scenario Footer Template includes the following text
""" <br><table><th>{{SCENARIO_NAME}}<br><strong>
    Verification Result (enter Pass or Fail)</strong>&nbsp;</th><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr></table> """
When the file is exported
Then Scenario Name in the Scenario Footer is displayed correctly

Scenario: Scenario Footer Template without placeholder for Scenario Name
Given Scenario Footer Template includes the following text
""" <br><table><th><br><strong>
    Verification Result (enter Pass or Fail)</strong>&nbsp;</th><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr></table> """
When the file is exported
Then Scenario Name in the Scenario Footer is empty

Scenario: Scenario Footer Template with multiple placeholders for Scenario Name
Given Scenario Footer Template includes the following text 
""" <br><table><th>{{SCENARIO_NAME}} {{SCENARIO_NAME}} {{SCENARIO_NAME}}<br><strong>
    Verification Result (enter Pass or Fail)</strong>&nbsp;</th><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr></table> """
When the file is exported
Then multiple placeholders are not replaced with actual Scenario Name except the first placeholder which is displayed correctly

Scenario: Scenario Footer Template with random text instead of placeholder for Scenario Name 
Given Scenario Footer Template includes the following text 
""" <br><table><th>{{vgfhhjdgdhdgghf}}<br><strong>
    Verification Result (enter Pass or Fail)</strong>&nbsp;</th><td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td></tr></table> """
When the file is exported
Then Scenario Name in the Scenario Footer looks like random text 

