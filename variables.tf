#Module      : LABEL
#Description : Terraform label module variables
variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "application" {
  type        = string
  default     = ""
  description = "Application (e.g. `cd` or `clouddrove`)."
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment (e.g. `prod`, `dev`, `staging`)."
}

variable "label_order" {
  type        = list
  default     = []
  description = "Label order, e.g. `name`,`application`."
}

variable "attributes" {
  type        = list
  default     = []
  description = "Additional attributes (e.g. `1`)."
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `organization`, `environment`, `name` and `attributes`."
}

variable "tags" {
  type        = map
  default     = {}
  description = "Additional tags (e.g. map(`BusinessUnit`,`XYZ`)."
}

# Module      : Lambda function
# Description : Terraform Lambda function module variables.
variable "enabled" {
  type        = bool
  default     = false
  description = "Whether to create lambda function."
}

variable "filename" {
  default     = null
  description = "The path to the function's deployment package within the local filesystem. If defined, The s3_-prefixed options cannot be used."
}

variable "s3_bucket" {
  default     = null
  description = "The S3 bucket location containing the function's deployment package. Conflicts with filename. This bucket must reside in the same AWS region where you are creating the Lambda function."
}

variable "s3_key" {
  default     = null
  description = "The S3 key of an object containing the function's deployment package. Conflicts with filename."
}

variable "s3_object_version" {
  default     = null
  description = "The object version containing the function's deployment package. Conflicts with filename. "
}

variable "handler" {
  type        = string
  description = "The function entrypoint in your code."
}

variable "description" {
  type        = string
  default     = ""
  description = "Description of what your Lambda Function does."
}

variable "layers" {
  default     = null
  description = "List of Lambda Layer Version ARNs (maximum of 5) to attach to your Lambda Function."
}

variable "memory_size" {
  type        = number
  default     = 128
  description = "Amount of memory in MB your Lambda Function can use at runtime. Defaults to 128."
}

variable "timeout" {
  type        = number
  default     = 3
  description = "The amount of time your Lambda Function has to run in seconds. Defaults to 3."
}

variable "runtime" {
  type        = string
  description = "Runtimes."
}

variable "reserved_concurrent_executions" {
  type        = number
  default     = -1
  description = "The amount of reserved concurrent executions for this lambda function. A value of 0 disables lambda from being triggered and -1 removes any concurrency limitations. Defaults to Unreserved Concurrency Limits -1."
}

variable "publish" {
  type        = bool
  default     = false
  description = "Whether to publish creation/change as new Lambda Function Version. Defaults to false."
}

variable "kms_key_arn" {
  type        = string
  default     = ""
  description = "The ARN for the KMS encryption key."
}

variable "filenames" {
  type        = list
  default     = []
  description = "The path to the function's deployment package within the local filesystem. If defined, The s3_-prefixed options cannot be used."
}

variable "s3_buckets" {
  type        = list
  default     = []
  description = "The S3 bucket location containing the function's deployment package. Conflicts with filename. This bucket must reside in the same AWS region where you are creating the Lambda function."
}

variable "s3_keies" {
  type        = list
  default     = []
  description = "The S3 key of an object containing the function's deployment package. Conflicts with filename."
}

variable "s3_object_versions" {
  type        = list
  default     = []
  description = "The object version containing the function's deployment package. Conflicts with filename."
}

variable "names" {
  type        = list
  default     = []
  description = "A unique name for your Lambda Layer."
}

variable "compatible_runtimes" {
  type        = list
  default     = []
  description = "A list of Runtimes this layer is compatible with. Up to 5 runtimes can be specified."
}

variable "descriptions" {
  type        = list
  default     = []
  description = "Description of what your Lambda Layer does."
}

variable "license_infos" {
  type        = list
  default     = []
  description = "License info for your Lambda Layer. See License Info."
}

variable "statement_ids" {
  type        = list
  default     = []
  description = "A unique statement identifier. By default generated by Terraform. "
}

variable "event_source_tokens" {
  type        = list
  default     = []
  description = "The Event Source Token to validate. Used with Alexa Skills."
}

variable "iam_actions" {
  type        = list
  default     = ["logs:CreateLogStream", "logs:CreateLogGroup", "logs:PutLogEvents"]
  description = "The actions for Iam Role Policy."
}

variable "actions" {
  type        = list
  default     = []
  description = "The AWS Lambda action you want to allow in this statement. (e.g. lambda:InvokeFunction)."
}

variable "principals" {
  type        = list
  default     = []
  description = "The principal who is getting this permission. e.g. s3.amazonaws.com, an AWS account ID, or any valid AWS service principal such as events.amazonaws.com or sns.amazonaws.com."
}

variable "source_arns" {
  type        = list
  default     = []
  description = "When granting Amazon S3 or CloudWatch Events permission to invoke your function, you should specify this field with the Amazon Resource Name (ARN) for the S3 Bucket or CloudWatch Events Rule as its value. This ensures that only events generated from the specified bucket or rule can invoke the function."
}

variable "qualifiers" {
  type        = list
  default     = []
  description = "Query parameter to specify function version or alias name. The permission will then apply to the specific qualified ARN. e.g. arn:aws:lambda:aws-region:acct-id:function:function-name:2"
}

variable "source_accounts" {
  type        = list
  default     = []
  description = "This parameter is used for S3 and SES. The AWS account ID (without a hyphen) of the source owner."
}

variable "subnet_ids" {
  type        = list
  default     = []
  description = "Subnet ids for vpc config."
}

variable "security_group_ids" {
  type        = list
  default     = []
  description = "Security group ids for vpc config."
}

variable "variables" {
  type        = map
  default     = {}
  description = "A map that defines environment variables for the Lambda function."
}