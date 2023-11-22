# AWS CloudWatch Metrics Retrieval Script

This shell script utilizes the AWS CLI to retrieve metrics from AWS CloudWatch and display information about specific metrics for a given AWS resource.

## Description

The script fetches metrics (e.g., CPUUtilization, Latency, DatabaseConnections) for a specified AWS resource (e.g., EC2 instance, ELB, RDS instance, S3 bucket, Lambda function) from CloudWatch and displays the metric data.

## Prerequisites

- AWS CLI configured with appropriate access keys and permissions.
- This script requires the `aws` command-line tool to be installed.

## Usage

### Cloning the Repository

To use the script, clone the repository to your local machine:

```bash
git clone https://github.com/dubeyapoorve/cloudwatch-metrics-retrieval.git
cd cloudwatch-metrics

### Running the Script

To execute the script, run the following command in your terminal:

```bash
bash cloudwatch_metrics.sh <AWS-RESOURCE-ID> <METRIC-NAME> <START-TIME> <END-TIME>

Replace <AWS-RESOURCE-ID>, <METRIC-NAME>, <START-TIME>, and <END-TIME> with the following information:

<AWS-RESOURCE-ID>: The identifier for the AWS resource (e.g., EC2 instance ID, ELB ID, RDS instance ID, S3 bucket name) for which you want to retrieve metrics.
<METRIC-NAME>: The name of the CloudWatch metric you wish to retrieve (e.g., CPUUtilization, Latency, DatabaseConnections).
<START-TIME>: The start time for the period from which you want to fetch metrics data (in ISO 8601 format, e.g., 2023-11-01T00:00:00Z).
<END-TIME>: The end time for the period until which you want to fetch metrics data (in ISO 8601 format, e.g., 2023-11-15T23:59:59Z).

Replace these placeholders with actual values relevant to your AWS environment and the specific CloudWatch metrics you want to retrieve.
