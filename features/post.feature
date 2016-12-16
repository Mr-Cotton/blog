Feature: Viewing posts
  As a reader
  I want to see the 10 most recent posts from my favorite blogger
  so that  I can keep up with their brilliance

  Scenario: Posts should be ordered from newest to oldest
    When a post date is checked
    Then It should be more recent than the last post

  Scenario: Should only see the 10 most recent posts
    When I get the posts on the page
    Then I should see the 10 most recently posted

  Scenario: Should be able to see the title of the post, some content, and the author
    When I visit cotton blog
    Then The author name and title should be on the post