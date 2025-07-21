# network_firewall_rule_group.tf
resource "aws_networkfirewall_rule_group" "stateful" {
  name     = "stateful-rule-group"
  capacity = 100
  type     = "STATEFUL"

  rule_group {
    rules_source {
      rules_string = <<EOF
        pass tcp any any -> any 80 (sid:1;)
        pass tcp any any -> any 443 (sid:2;)
      EOF
    }
  }

  description = "Allow HTTP and HTTPS traffic"
}

