Feature: Viewing posts
  As a reader
  I want to see the 10 most recent posts from my favorite blogger
  so that  I can keep up with their brilliance

  Scenario: Posts should be ordered from newest to oldest
    When I create a new post
    Then It should be more recent than the last post

  Scenario: Should only see the 10 most recent posts
    When I get the posts on the page
    Then I should see the 10 most recently posted
