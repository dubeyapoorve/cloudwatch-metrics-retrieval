# AWS CloudWatch Metrics Retrieval Script

This shell script utilizes the AWS CLI to retrieve metrics from AWS CloudWatch and display information about specific metrics for a given AWS resource.

## Description

The script fetches metrics (e.g., CPUUtilization, Latency, DatabaseConnections) for a specified AWS resource (e.g., EC2 instance, ELB, RDS instance, S3 bucket, Lambda function) from CloudWatch and displays the metric data.

## Prerequisites

- AWS CLI configured with appropriate access keys and permissions.
- This script requires the `aws` command-line tool to be installed.

## Usage

### Running the Script

1. Clone the repository:

   ```bash
   git clone https://github.com/dubeyapoorve/cloudwatch-metrics-retrieval.git

2. Navigate to the project directory:

   cd cloudwatch-metrics

3. Run the script with required parameters:

   bash cloudwatch_metrics.sh <<AWS-RESOURCE-ID>> <<AWS-RESOURCE-ID>> <<METRIC-NAME>> <<START-TIME>> <<END-TIME>>

Replace AWS-RESOURCE-ID, METRIC-NAME, START-TIME and END-TIME with actual values.
