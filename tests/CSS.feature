Scenario: CSS

Given 'filepath' is added to Gherkin-pdf: Styles Extension setting
When a feature file is exported
Then result pdf is formated according to the styles from 'filepath' 
