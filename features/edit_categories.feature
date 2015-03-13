Feature: Edit and Create Categories
  As an admin
  I would like to be able add and edit categories
  So that I can better organize my articles

Background:
  Given the blog is set up
  And I am logged into the admin panel
  And I am on the admin content page
  And the category "Default" is created

Scenario: Create a new category
  When I follow "Categories"
  And I try to create the category "Cool"
  Then I should be on the categories page
  And I should see "Category was successfully saved"

Scenario: Edit a category
  When I follow "Categories"
  And I follow "Default"
  And I try to add the keyword "ccccooooolllll"
  Then I should see "Category was successfully saved"
  And I should see "ccccooooolllll"
