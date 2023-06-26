Feature: MMT
    This is to perform automated fucntional testing on MMT Website


    Scenario Outline: 1.Select from as Bangalore and To as Hyderabad | Home Page

        Given I launch the url "https://www.makemytrip.com"
        #When I Switch to the frame for "Frame"
        #And I wait for "4" seconds
        When I click "FromCity"
        And I wait for "4" seconds
        When I enter text "Bengaluru" in the web element "fromInput"
        And I wait for "4" seconds
        When I click "selectCity"
        And I wait for "4" seconds
        When I click "ToCity"
        And I wait for "4" seconds
        When I enter text "Hyderabad" in the web element "toInput"
        And I wait for "4" seconds
        When I click "selectCity"


    Scenario Outline: 2.Select +30days with the current date in the calendar| Home Page

        And I wait for "4" seconds
        Then I click "Selectdate"
        Then I click "nextMonth"
        Then I click "SelectDay"
        And I wait for "4" seconds

    Scenario Outline: 3.Select Adult as count 2, children 3, infant 1 and class as Business| Home Page
        When I click "traveller"
        And I click "adult" a value "2"
        And I click "children"
        And I click "infant"
        And I click "class"
        Then I click "Apply"


    Scenario Outline: 4.Select Airasia as a filter on the LHS side| Home Page

        When I click "Search"
        And I wait for "6" seconds
        Then I click "ClosePopup"
        Then I click "Filter"
        When I get the values for "AirlinesNames"
        When I get the values for "AirlinePrice"
        When I get the values for "AirlineDuration"




