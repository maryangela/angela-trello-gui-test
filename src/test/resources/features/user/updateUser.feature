@UserProfile
Feature: Update user's profile

  @Functional @ResetUserInformation
  Scenario: Update user's information in Profile and Visibility section
    Given I log in to Trello with Editable user credentials
    When I navigate to Profile section
    And I edit my profile with the following information
      | username | newnameUNIQUE_ID  |
      | bio      | new bio UNIQUE_ID |
    Then "Saved" message should be displayed in Profile and Visibility section
    And My profile information should be updated in Profile and Visibility section
    #And My username should be updated into Top Content
