Feature: Export different files 
As a Test engineer, I want gherkin-pdf to export gherkin files into pdf format so that I can share them with non-technical people
Scenario: Export different files 
Given "gherkin-pdf" extension is installed
When I export <file> into pdf
Then the gherkin content is displayed with rich formatting 
And no formatting issues are present
Examples: Files
| file   |
| background.feature |
| complex_background.feature |
| datatables.feature |
| datatables_with_new_lines.feature |
| descriptions.feature |
| docstrings.feature |
| empty.feature |
| escaped_pipes.feature |
| example_token_multiple.feature |
| example_tokens_everywhere.feature |
| i18n_emoji.feature |
| i18n_fr.feature |
| i18n_no.feature |
| incomplete_background_1.feature |
| incomplete_background_2.feature |
| incomplete_feature_1.feature |
| incomplete_feature_2.feature |
| incomplete_feature_3.feature |
| incomplete_scenario.feature |
| incomplete_scenario_outline.feature |
| language.feature |
| minimal-example.feature |
| minimal.feature |
| padded_example.feature |
| readme_example.feature |
| rule.feature |
| rule_with_tag.feature |
| rule_without_name_and_description.feature |
| scenario_outline.feature |
| scenario_outline_no_newline.feature |
| scenario_outline_with_docstring.feature |
| scenario_outline_with_value_with_dollar_sign.feature |
| scenario_outline_with_value_with_trailing_backslash.feature |
| scenario_outlines_with_tags.feature |
| several_examples.feature |
| spaces_in_language.feature |
| tagged_feature_with_scenario_outline.feature |
| tags.feature |
| very_long.feature |
| comment_before_given.feature |
| data_table_with_comments.feature |
| datatable_with_PHP_FQCN.feature |
| docstring_with_json.feature |
| example.feature |
| last_line_comment.feature |
| last_line_comment_multiples.feature |
| multiple_comments_line.feature |
| simple-comment.feature |
| unescape_backslashes_table_cell.feature |
| 100-lines.feature |
| exploratory.feature |
| long_table.feature |
| wide_table.feature |