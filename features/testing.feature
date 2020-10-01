Feature: wp-cli tests
  Scenario: wp core
    Given a WP installation

    When I run `wp core version`
    Then the return code should be 0


  Scenario: wp plugin
    Given a WP installation

    When I try `wp plugin list --json`
    Then STDOUT should contain:
      """
      hello
      """
    And the return code should be 0


  Scenario: wp theme
    Given a WP installation

    When I try `wp theme list --json`
    Then STDOUT should contain:
      """
      twenty
      """
    And the return code should be 0
