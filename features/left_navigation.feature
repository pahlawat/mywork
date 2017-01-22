@manual
Feature: left navigation

  AS A Product owner
  I WANT to see a left navigation
  SO THAT I can filter my search

  Background:
    Given I am on the Television page

    Scenario: Screen Size filter
      And I see a screen size filter
      When I select screen size
      Then my search is fileterd with the relevant screen size results

    Scenario: Price filter
      And I select the minimum price
      And I select the maximum price
      Then my search is filterd with the relevant price results

    Scenario: Sign up promotion
      And I am not signed in to the page
      Then I see a sign up promo

    Scenario: Brand filter
      And I select the brands
      Then my search is filtered with relevant brand results

    Scenario: Popular screen size filter
      And I select the popular screen
      Then my search is filtered with relevant brand results

      #As there are alot of filter options on this page, would ideally create a method that randomly
  #picks an option from each filter section