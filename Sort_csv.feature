Feature: Sort the values in a line of comma-seperated strings in descending order
Sort the values in a file containing comma-seperated single line of strings

	Scenario: Input file is empty
	Given there's no data in the input file
	When checked for data in the input file
	Then the program should return a empty file named output.csv
	
	Scenario: Input file with data
	Given the input file has data
	When the input file is read
	Then the program should return a file output.csv with comma-seperated strings in descending order
	
	Scenario: Input file with null values or spaces
	Given the input file has one more null values or spaces
	When the input file is read
	Then the program should return a file output.csv with comma-seperated strings in descending order
	And treat the null values or spaces as final elements in the line