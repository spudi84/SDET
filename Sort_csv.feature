Feature: Sort the values in a line of comma-seperated strings in descending order
Sort the values in a file containing comma-seperated single line of strings

	Scenario: Input file is empty
	Given there's no data in the input file
	When checked for data in the input file
	Then the program should return a empty file named output.csv
	
	Scenario: Input file with data
	Given the input file has data
	When the input file is read
	Then the program should return a file output.csv with comma-seperated strings sorted in descending order
	
	Scenario: Input file with null values or spaces
	Given the input file has one more null values or spaces
	When the input file is read
	Then the program should return a file output.csv with comma-seperated strings sorted in descending order
	And treat the null values or spaces as final elements in the line
	
	Scenario: Input file with unicode data
	Given the input file contains unicode data
	When the input file is read
	Then the program should encode it to ascii, sort the comma-seperated strings in descending order
	And return the unicode file output.csv
	
	Scenario: Input file contains alphanumeric data
	Given the input file contains alphanumeric comma-seperated strings
	When the input file is read
	Then treat the numerics as strings
	And return a file output.csv with comma-seperated strings in descending order
	
	Scenario: Input file contains uppercase and lowercase strings
	Given the input file contains both uppercase and lowercase strings
	When the input file is read
	Then ignore the cases while sorting
	And retain the cases
	And return a file output.csv with comma-seperated strings in descending order
	
	Scenario: Input file contains similar strings with different cases (upper and lower case)
	Given the input file contains strings with identical sequnce of characters but with different cases (uppercase and lowercase)
	When the input file is read
	Then ignore the cases
	And retain the order with respect to each of the strings
	And return a file output.csv with comma-seperated strings in descending order