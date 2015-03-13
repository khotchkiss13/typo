Feature: Merge Articles
  As a blog administer
  I would like to be able to merge articles
  So that my readers can see all of the writing on a topic within my blog

Background:
  Given the blog is set up
  And the article "Cool1" with body "Lorem Ipsum" has been posted by "person"
  And the article "Why??" with body "Cool stuff" has been posted by "admin"

Scenario: Successful Merge of article text, title, and author
  Given I am logged into the admin panel
  And I am on the admin content page
  When I follow "Cool1"
  And I try to merge with "Why??"
  Then I should be on the admin content page
  When I go to the home page
  Then I should see "Cool1"
  And I should not see "Why??"
  When I follow "Cool1"
  Then I should see "Lorem Ipsum"
  And I should see "Cool stuff"
  And I should not see "Why??"
  And the author of "Cool1" should be "person"

Scenario: Non-admin cannot merge
  Given I am logged into the non-admin panel
  And I am on the admin content page
  When I follow "Cool1"
  Then I should not see "Merge"
