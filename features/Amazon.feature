Feature: Amazon | Home
  This is to perform automated fucntional testing on Amazon  Website

  Scenario Outline: Amazon | Home
    Given I launch the url "https://www.amazon.in/"


  Scenario Outline: Clicking on All Button and scroll | Home
    When I click "all_CTA"
    And I should see "Fashion"
    Then I wait for "4" seconds

  Scenario Outline: Clicking on Mens Fashion | Home
    Then I scroll to see the element "Fashion"
    Then I wait for "4" seconds
    When I click "Fashion"

  Scenario Outline: Selecting Sub menu Shirts | Home
    When I wait for "4" seconds
    And I click "Shirts"
    Then I wait for "4" seconds

  Scenario Outline: Open Product and select the size and color | Home
    Then I hover on element "HoverProd"
    When I wait for "4" seconds
    And I click "QuickLook"
    And I click "SeeProdDetails"
    Then I wait for "4" seconds
    Then I select "XL" from the visible text of "SelectSize" dropdown
    Then I wait for "4" seconds
    And I click "Color"
    When I get the text for "ProductSize"
    When I get the text for "ProductName"
    When I get the text for "ProductPrice"
    When I get the text for "ProductQTY"


    And I should see multiple elements
      | LocatorName |
      | Color       |
      | ProductName |


  Scenario Outline: Add to Cart and Navigate to cart page | Home
    When I click "AddtoCart"
    Then I wait for "4" seconds
    And I click "GotoCart"
    When I compare the value of "CartCount" to "1"





