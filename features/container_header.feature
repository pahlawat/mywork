@todo
Feature: Filter header

  AS A Product owner
  I WANT to see a header
  SO THAT I can filter my search based on reviews

  Background:
    Given I am on the Television page

    Scenario: Container header
      Then I see a header containing following options
        | All Televisions |
        | Best buys       |
        | Don't Buys      |
        | Advice Guides   |
      When I select a tab
      Then I am taken to the relevant item page
