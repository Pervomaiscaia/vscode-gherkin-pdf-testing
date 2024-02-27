Feature: HTML format in the Feature Description
As a Test Engineer 
I want gherkin-pdf to suport html format in the Feature Description

Scenario: Feature Description with formatted text
Given Feature Description includes the following text
""" <h1>Heading 1</h1> <h6>Heading 6</h6> <p>Some text</p> <b>Bold text</b> <i>Italic</i>
<tt>Typewriter text</tt> <textarea>Text inside textarea</textarea> """
When the file is exported
Then HTML elements in Feature Description are properly rendered

Scenario: Feature Description with URL
Given Feature Description includes the following text
""" <a href="https://www.w3schools.com/tags/">HTML Element Reference</a> """
When the file is exported
Then HTML elements in Feature Description are properly rendered

Scenario: Feature Description with table
Given Feature Description includes the following text
""" <table width=\"100%\"   <style type="text/css">  </style>  <tr>  <th>&nbsp;</th>   <th>January</th>   <th>February</th>   <th>March</th>     <th>April</th>    <th>May</th>   </tr>  <tr>   <td>Sales dinamics</td>   <td>100</td>   <td>200</td>   <td>300</td>    <td>400</td>     <td>500</td>    </tr> """
When the file is exported
Then HTML elements in Feature Description are properly rendered
