Feature: Create a post
  As an blogger I want to create a post to share my brilliance.

  Scenario: Should not be able to create 2 posts with the same title
    When I enter in the same title as a previous post
    Then I receive an error message