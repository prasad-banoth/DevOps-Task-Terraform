# firewall_policy.tf
resource "aws_networkfirewall_firewall_policy" "example" {
  name = "example-firewall-policy"

  firewall_policy {
    stateful_rule_group_reference {
      resource_arn = aws_networkfirewall_rule_group.stateful.arn
    }

    stateless_default_actions = ["aws:forward_to_sfe"]
    stateless_fragment_default_actions = ["aws:forward_to_sfe"]
  }
}
