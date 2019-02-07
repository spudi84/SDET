Feature: Sort the values in a single line of comma-seperated strings in descending order
Sort the values in a file containing comma-seperated single line of strings

	Scenario: Input file is empty
	Given an empty input file input.csv
	When the input file is sorted
	Then the program should return an empty output.csv
	
	Scenario: Input file with data
	Given an input file input.csv with a single line of comma-seperated strings 
	When the input file is sorted
	Then the program should return a file output.csv with comma-seperated strings sorted in descending order
	
	Scenario: Input file with null values or spaces
	Given the input file contains one or more null values or spaces
	When the input file is sorted
	Then the program should return a file output.csv with comma-seperated strings sorted in descending order
	And treat the null values or spaces as final elements in the order
	
	Scenario: Input file with unicode data
	Given the input file contains unicode data
	When the input file is sorted
	Then sort the comma-seperated strings in descending order
	And return the output.csv in unicode
	
	Scenario: Input file contains alphanumeric data
	Given the input file contains alphanumeric comma-seperated strings
	When the input file is sorted
	Then treat the numerics as characters
	And return a file output.csv with comma-seperated strings in descending order
	
	Scenario: Input file contains uppercase and lowercase strings
	Given the input file contains both uppercase and lowercase strings
	When the input file is sorted
	Then return a file output.csv with comma-seperated strings in descending alphabetical order
	
	Scenario: Input file contains similar strings with different cases (upper and lower case)
	Given the input file contains strings with identical sequnce of characters but with different cases (uppercase and lowercase)
	When the input file is sorted
	Then retain the order of the similiar strings with respect to each of the strings
	And return a file output.csv with comma-seperated strings in descending order
	
	Scenario: Input file is not a csv file
	Given the input file is not a csv
	When the input file is sorted
	Then the program should return an empty output.csv
	
	Scneario: Input file has a name other than input.csv
	Given the input file has a name other than input.csv
	When the input file is sorted
	Then the program should return an empty output.csv
	
	Scenario: Input file with multiple lines
	Given the input file has multiple lines
	When the input file is sorted
	Then return a file output.csv with comma-seperated strings in descending order only for the first line
	
	Scenario: Sort function reaches the max limit
	Given the input file has enough data above the maximum limit of the sort funcation
	When the input file is sorted
	Then the program should return an empty output.csv