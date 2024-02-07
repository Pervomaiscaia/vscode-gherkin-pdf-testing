Scenario: Feature Summary with Table
Given "Feature Summary Template" gherkin-pdf settings is set to 
"""
"<table   width=\"100%\"   style=\"margin-left: 8px; margin-top: 8px; margin-bottom: 10px\" >   
 <tr>     <th width=\"35%\">Software Under Test: </th>     <td>&nbsp;</td>   </tr>  
 <tr>     <th>Executed By:</th>     <td>&nbsp;</td>   </tr> 
 <tr>     <th>Date:</th>     <td>&nbsp;</td>   </tr>   
 <tr>     <th>Test Result:</th>     <td>&nbsp;</td>   </tr> 
</table>
 <br />"
"""
When I export any feature file into pdf
Then the exported file include a table with placeholders for test execution
And no formatting issues are present

Scenario: Empty Feature Summary 
Given "Feature Summary Template" gherkin-pdf settings is set to 
"""
"&nbsp;"
"""
When I export any feature file into pdf
Then the exported file includes the original  feature summary
And no formatting issues are present

Scenario: Feature Summary with Wide Table
Given "Feature Summary Template" gherkin-pdf settings is set to 
"""
"<table   width=\"100%\"   style=\"margin-left: 8px; margin-top: 8px; margin-bottom: 10px\" >
<tr>     <th width=\"35%\">Software Under Test: </th>     <td>1</td>    <td>2</td>    <td>3</td>    <td>4</td>    <td>5</td>   <td>6</td>   <td>7</td>   <td>8</td>   <td>9</td>   <td>10</td>   <td>11</td>   <td>12</td>   <td>13</td>   <td>14</td>   <td>15</td>   <td>16</td>   <td>17</td>   <td>18</td>   <td>19</td>   <td>20</td>   <td>21</td>   <td>22</td>   <td>23</td>   <td>24</td>   <td>25</td>   </tr>
<tr>     <th>Executed By:</th>     <td>&nbsp;</td>    <td>&nbsp;</td>    <td>&nbsp;</td>    <td>&nbsp;</td>    <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   </tr>
<tr>     <th>Date:</th>     <td>&nbsp;</td>    <td>&nbsp;</td>    <td>&nbsp;</td>    <td>&nbsp;</td>    <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   </tr>
<tr>     <th>Test Result:</th>     <td>&nbsp;</td>   <td>&nbsp;</td>    <td>&nbsp;</td>    <td>&nbsp;</td>    <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   <td>&nbsp;</td>   </tr>
</table>
<br />"
"""
When I export any feature file into pdf
Then the exported file includes full wide table
But wide table (over 20 columns) is truncated when exported into pdf 

Scenario: Feature Summary with Different Text Format
Given "Feature Summary Template" gherkin-pdf settings is set to
"""
"<h1>Title</h1> <h6>Title</h6> <p>Text Text Text</p> 
<b>Bold</b> <i>Italic</i>
<tt>Typewriter style</tt> <textarea>Textarea</textarea>"
""" 
When I export any feature file into pdf
Then the exported file contains all specified text formats
And no formatting issues are present

Scenario: Feature Summary with URL
Given "Feature Summary Template" gherkin-pdf settings is set to
"""
"<a href="https://www.youtube.com/watch?v=GviyJKK6yD8">GitHub (git) для тестировщика</a>"
"""
When I export any feature file into pdf
Then the exported file includes active link
And no formatting issues are present

Scenario: Feature Summary with Image
Given "Feature Summary Template" gherkin-pdf settings is set to
"""
"<img src="Text.png">
<img src="IMG_0529.jpeg">"
"""
When I exported any feature file into pdf
Then the exported file contains chosen images
But the exported file does not show chosen images