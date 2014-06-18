Feature: user submits array of strings

	As a user
	I want to submit array of strings
	So that I can see the output

	Scenario: view the output
		Given I am at the home page
		When I fill in 'Array' with '1,Hel, 6, 3, lo'
		And press save array button
		Then I should see '10'
		And I should see '1'
		And I should see '6'
		And I should see 'Hello'


