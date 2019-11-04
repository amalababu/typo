Feature: Create and Edit Category
  As a blog administrator
  In order to add a category
  I want to be able to add category

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully add categories
    Given I am on the new category page
    When I fill in "category_name" with "Foobar"
    And I fill in "category_keywords" with "Lorem Ipsum"
    And I press "Save"
    Then I should see "Foobar"
    When I follow "Foobar"
    Then I should see "Lorem Ipsum"
    And I fill in "category_name" with "Barfoo"
    And I press "Save"
    Then I should see "Barfoo"
    When I follow "Barfoo"
    Then I should see "Lorem Ipsum"
    
      
