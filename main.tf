module "ErrorRate5xx" {
  source  = "youyo/cloudwatch-alarm/aws"
  version = "0.1.1"

  identifier                = var.identifier
  metric_name               = "5xxErrorRate"
  namespace                 = "AWS/CloudFront"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  statistic                 = "Average"
  alarm_actions             = var.alarm_actions
  insufficient_data_actions = var.insufficient_data_actions
  ok_actions                = var.ok_actions
  datapoints_to_alarm       = 8
  evaluation_periods        = 10
  period                    = 60
  threshold                 = 10
  treat_missing_data        = "notBreaching"

  dimensions = {
    DistributionId = var.distribution_id
    Region         = "Global"
  }

  tags = var.tags
}

module "OriginLatency" {
  source  = "youyo/cloudwatch-alarm/aws"
  version = "0.1.1"

  identifier                = var.identifier
  metric_name               = "OriginLatency"
  namespace                 = "AWS/CloudFront"
  comparison_operator       = "GreaterThanOrEqualToThreshold"
  statistic                 = "Average"
  alarm_actions             = var.alarm_actions
  insufficient_data_actions = var.insufficient_data_actions
  ok_actions                = var.ok_actions
  datapoints_to_alarm       = 8
  evaluation_periods        = 10
  period                    = 60
  threshold                 = 5000
  treat_missing_data        = "notBreaching"

  dimensions = {
    DistributionId = var.distribution_id
    Region         = "Global"
  }

  tags = var.tags
}
