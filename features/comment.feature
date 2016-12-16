Feature: Comment on a post
  As a reader
  I want to leave comments on a blog post
  so that everyone can see that I am as brilliant as the blogger


  Scenario: Should be able to add multiple comments
    When I comment on a post
    Then I should be able to comment again

  Scenario: Should be able to see all the comments and their authors
    When I click on a post
    Then I should see all the comments and authors names

  Scenario: Oldest comments should be at the top of the page
    When I read the comments
    Then the comments should be oldest on the top