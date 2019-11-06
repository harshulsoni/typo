Feature: Create categories
  As a blog administrator
  In order to share my thoughts with the world
  I want to be able to add categories to my blog

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully Create categories
    Given I am on the new categories page
    When I fill in "category_name" with "music_hindi_pop"
    And I fill in "category_keywords" with "hindi_pop"
    And I fill in "category_permalink" with "perma1"
    And I fill in "category_description" with "Music Hindi POP"
    And I press "Save"
    Then I should see "music_hindi_pop"
    Then I should see "hindi_pop"
    Then I should see "perma1"
    Then I should see "Music Hindi POP"
    Then I follow "music_hindi_pop"
    When I fill in "category_name" with "music_hindi_sab"
    And I fill in "category_keywords" with "hindi_sad"
    And I fill in "category_permalink" with "perma2"
    And I fill in "category_description" with "Music Hindi Sad"
    And I press "Save"
    Then I should see "music_hindi_sab"
    Then I should see "hindi_sad"
    Then I should see "perma2"
    Then I should see "Music Hindi Sad" 