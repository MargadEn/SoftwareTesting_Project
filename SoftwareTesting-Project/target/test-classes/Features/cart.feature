Feature: Cart Testing

  Background:
    Given the homepage is open
    And the Username is filled with 'standard_user'
    And the Password is filled with 'secret_sauce'
    And the Login button is clicked

  Scenario Outline: Checking the total value
    Given the '<item>' is added to the cart
    And the Cart is opened
    And the checkout button is clicked
    And the First Name is filled with 'Margad'
    And the Last Name is filled with 'Enkhbayar'
    And the Zip Code is filled with '4025'
    When the Continue button is clicked
    Then '<total>' should be shown

    Examples:
      | item                                               | total            |
      | Sauce Labs Backpack                                | Total: $32.39    |
      | Sauce Labs Backpack, Sauce Labs Bike Light         | Total: $43.18    |
      | Sauce Labs Backpack, Sauce Labs Bike Light, Sauce Labs Bolt T-shirt, Sauce Labs Fleece Jacket, Sauce Labs Onesie | Total: $123.07 |

