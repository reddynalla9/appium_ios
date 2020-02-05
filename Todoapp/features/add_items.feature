Feature: Add items


  @ios
  Scenario: Add item to the list
    Given a user is on the landing page
    And a user has selected add icon
    When the user adds item
    Then the item appears in the `Due` section

