Feature: administrador
  As a Admin of the system
  I want to Register, update my information and delete Register
  So that i can use the tools available

  #Register ------------------------------------------------------------------------

  Scenario: valid admin register
    Given i am at admin register page
    When i fill login field "Pirangaba" password field "admin"
    And i click on the register button
    Then i see an admin registered successfuly message

  Scenario: empty login field admin register
    Given i am at admin register page
    When i fill login field "" password field "admin"
    And i click on the register button
    Then i see an empty login error message

  Scenario: login alredy taken admin register
    Given i am at admin register page
    And i create a admin with login "Pirangaba" and password "admin"
    When i fill login field "Pirangaba" password field "admin"
    And i click on the register button
    Then i see an login already taken error message

  Scenario: empty password field admin register
    Given i am at admin register page
    When i fill login field "Pirangaba" password field ""
    And i click on the register button
    Then i see an empty password error message


  #Update ----------------------------------------------------------------------------

  Scenario: valid admin update
    Given i am at admin update page
    When i fill login field "Pirangaba" password field "admin"
    And i click on the update button
    Then i see an admin updated successfuly message

  Scenario: empty login field admin update
    Given i am at admin update page
    When i fill login field "" password field "admin"
    And i click on the update button
    Then i see an empty login error message

  Scenario: login alredy taken admin update
    Given i am at admin register page
    And i create a admin with login "Pirangaba" and password "admin"
    And i am at admin update page
    When i fill login field "Pirangaba" password field "admin"
    And i click on the update button
    Then i see an login already taken error message

  Scenario: empty password field admin update
    Given i am at admin update page
    When i fill login field "Pirangaba" password field ""
    And i click on the update button
    Then i see an empty password error message

  #Delete --------------------------------------------------------------------

  Scenario: valid admin deletion
    Given i am at admin with login "Pirangaba" and password "admin" page
    When i click on the delete button
    Then i see an admin deleted sucessfully message