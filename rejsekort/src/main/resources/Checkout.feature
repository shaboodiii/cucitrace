#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Checking out with travel card

Background: 
	
	Given a travel card with a balance of 100 
	 And check-in status is true
	 
Scenario: Successful check-out 
	And a check-in traautomaton at "Sydhavn St"
	And a check-out automaton at "Norreport St"
	When a check-out
	Then automaton displays a message that the card is checked-out
	And travel card has a new balance 75


#fare = 50
Scenario: Travelling with different means of transportation
    And check-in on a bus
    When a check-out
    Then travel card has a new balance 50

    
Scenario: Not Checked-in
	And check-in status is false
	And a check-out automaton at "Norreport St"
	When a check-out
	Then automaton displays a message that the card is not checked-in
	And travel card has a new balance 100
