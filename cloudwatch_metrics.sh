#!/bin/bash

# AWS CloudWatch Metrics Retrieval Script

aws_resource_id=$1
metric_name=$2
start_time=$3
end_time=$4

if [[ -z "$aws_resource_id" || -z "$metric_name" || -z "$start_time" || -z "$end_time" ]]; then
    echo "Usage: $0 <AWS-RESOURCE-ID> <METRIC-NAME> <START-TIME> <END-TIME>"
    exit 1
fi

# Fetch CloudWatch metrics data
metric_data=$(aws cloudwatch get-metric-data --metric-data-queries "MetricStat={Metric={Namespace=AWS/EC2, MetricName=${metric_name}, Dimensions=[{Name=InstanceId,Value=${aws_resource_id}}]},Period=300,Stat=Average}" --start-time $start_time --end-time $end_time --output json)

# Display metric data
echo "CloudWatch Metric Data for $metric_name on $aws_resource_id:"
echo "---------------------------------------------"

if [ -n "$metric_data" ]; then
    echo "$metric_data" | jq '.MetricDataResults[0].Timestamps, .MetricDataResults[0].Values'
else
    echo "No data found for the specified metric and resource."
fi
