@new_tests
Feature: Television List

  AS A Product owner
  I WANT to see list of televisions
  SO THAT I can compare different televisions to get reviews

  Background:
    Given I am on the Television page

  Scenario: Television list
    Then I see a list of televisions
    And I can see the following information
      | image          |
      | launch date    |
      | tested date    |
      | product price  |
      | compare button |

  Scenario: Compare the product
    And I add an item to compare
    Then I see the item added in the panel
    When I select to see the reviews
    Then I am taken to the reviews page

  Scenario: Remove the item from compare panel
      And I add an item to compare
      When I remove the item from compare panel
      Then the item is removed from compare panel

  Scenario Outline: Filter options
     And I see <options> to sort my results from the filter

    Examples: of the filter options
      | options                   |
      | Most-recently tested      |
      | Highest Which? score      |
      | Price (low to high)       |
      | Price (high to low)       |
      | Screen size (high to low) |
      | Most-recently launched    |

    Scenario: Pagination
      And I see a pagination bar on the page
