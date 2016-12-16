Feature: Reading posts
  As a reader
  I want to read a full post
  so that I have all of the details and can impress my neighbor

  Scenario: Should be able to click the post title to get the entire post
    When I click the title of a post
    Then I should be taken to the entire post
