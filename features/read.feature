Feature: Reading posts
  As a reader
  I want to read a full post
  so that I have all of the details and can impress my neighbor

  Scenario: Should be able to click the post title to get the entire post
    When I click the title of a post
    Then I should be taken to the entire post

  Scenario: The entire post should have the title, author and content on it
    When I view a post
    Then I should see the title and author name on the post
