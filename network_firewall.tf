resource "aws_networkfirewall_rule_group" "stateless" {
  capacity = 100
  name     = "stateless-rule-group"
  type     = "STATELESS"

  rule_group {
    rules_source {
      stateless_rules_and_custom_actions {
        stateless_rule {
          priority = 1
          rule_definition {
            actions = ["aws:pass"]
            match_attributes {
              protocols = [6]
              source     = ["0.0.0.0/0"]
              destination = ["0.0.0.0/0"]
              source_port     = ["0"]
              destination_port = ["80", "443"]
            }
          }
        }
      }
    }
  }

  tags = {
    Name = "stateless-group"
  }
}

resource "aws_networkfirewall_rule_group" "stateful" {
  capacity = 100
  name     = "stateful-rule-group"
  type     = "STATEFUL"

  rule_group {
    rules_source {
      rules_string = <<EOF
drop tcp any any -> 198.51.100.1/32 any
EOF
    }
  }

  tags = {
    Name = "stateful-group"
  }
}

resource "aws_networkfirewall_firewall_policy" "example" {
  name = "example-firewall-policy"

  firewall_policy {
    stateless_rule_group_reference {
      priority     = 100
      resource_arn = aws_networkfirewall_rule_group.stateless.arn
    }

    stateful_rule_group_reference {
      resource_arn = aws_networkfirewall_rule_group.stateful.arn
    }
  }

  tags = {
    Name = "example-fw-policy"
  }
}

resource "aws_networkfirewall_firewall" "example" {
  name                = "example-firewall"
  firewall_policy_arn = aws_networkfirewall_firewall_policy.example.arn
  vpc_id              = aws_vpc.main.id

  subnet_mapping {
    subnet_id = aws_subnet.public[0].id
  }

  tags = {
    Name = "example-fw"
  }
}
