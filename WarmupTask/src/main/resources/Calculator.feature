Feature: Basic Arithmethic

  
  In Order to avoid stupid mistakes
  
  
  As a cautious person
  
  
  I use a calculator.

  Scenario: simple addition
   
    Given a calculator I just turned on
    
    When I add 4
    
    And I add 5
    
    Then the result displayed is 9
    
    And reset calculator after five seconds


  Scenario: simple multiplication
   
    Given a calculator I just turned on
    
    When I add 1
   
   And I multiply 5
    
    Then the result displayed is 5
    
    And reset calculator after five seconds
    
    