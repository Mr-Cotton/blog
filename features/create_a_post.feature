Feature: Create a post
  As an blogger I want to create a post to share my brilliance.

  Scenario: A new post should allow me to enter title, content, author name
    When I create a new post
    Then I should be allowed to enter title, content, author name

  Scenario: Should be able to recognize all fields are entered
    When I enter in the title, content, and author name
    Then I will create my post

  Scenario: Should not be able to create 2 posts with the same title
    When I enter in the same title as a previous post
    Then I receive an error message