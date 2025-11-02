//===----------------------------------------------------------------------===//
//
// This source file is part of the Swift OTel open source project
//
// Copyright (c) 2025 the Swift OTel project authors
// Licensed under Apache License v2.0
//
// See LICENSE.txt for license information
//
// SPDX-License-Identifier: Apache-2.0
//
//===----------------------------------------------------------------------===//

// DO NOT EDIT. This file is generated automatically. See README for details.

extension OTelAttribute {
    #if Experimental
    /// `aws` namespace
    public enum aws {
        /// `aws.extended_request_id` **UNSTABLE**: The AWS extended request ID as returned in the response header `x-amz-id-2`.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Example: `wzHcyEWfmOGDIE5QOhTAqFDoDWP3y8IUvpNINCwL9N4TEHbUw0/gZJ+VZTmCNCWR7fezEN3eCiQ=`
        public static let extendedRequestId = "aws.extended_request_id"

        /// `aws.request_id` **UNSTABLE**: The AWS request ID as returned in the response headers `x-amzn-requestid`, `x-amzn-request-id` or `x-amz-request-id`.
        ///
        /// - Stability: development
        /// - Type: string
        /// - Examples:
        ///     - `79b9da39-b7ae-508a-a6bc-864b2829c622`
        ///     - `C9ER4AJX75574TDJ`
        public static let requestId = "aws.request_id"

        /// `aws.bedrock` namespace
        public enum bedrock {
            /// `aws.bedrock.guardrail` namespace
            public enum guardrail {
                /// `aws.bedrock.guardrail.id` **UNSTABLE**: The unique identifier of the AWS Bedrock Guardrail. A [guardrail](https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails.html) helps safeguard and prevent unwanted behavior from model responses or user messages.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `sgi5gkybzqak`
                public static let id = "aws.bedrock.guardrail.id"
            }

            /// `aws.bedrock.knowledge_base` namespace
            public enum knowledgeBase {
                /// `aws.bedrock.knowledge_base.id` **UNSTABLE**: The unique identifier of the AWS Bedrock Knowledge base. A [knowledge base](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base.html) is a bank of information that can be queried by models to generate more relevant responses and augment prompts.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `XFWUPB9PAW`
                public static let id = "aws.bedrock.knowledge_base.id"
            }
        }

        /// `aws.dynamodb` namespace
        public enum dynamodb {
            /// `aws.dynamodb.attribute_definitions` **UNSTABLE**: The JSON-serialized value of each item in the `AttributeDefinitions` request field.
            ///
            /// - Stability: development
            /// - Type: stringArray
            public static let attributeDefinitions = "aws.dynamodb.attribute_definitions"

            /// `aws.dynamodb.attributes_to_get` **UNSTABLE**: The value of the `AttributesToGet` request parameter.
            ///
            /// - Stability: development
            /// - Type: stringArray
            public static let attributesToGet = "aws.dynamodb.attributes_to_get"

            /// `aws.dynamodb.consistent_read` **UNSTABLE**: The value of the `ConsistentRead` request parameter.
            ///
            /// - Stability: development
            /// - Type: boolean
            public static let consistentRead = "aws.dynamodb.consistent_read"

            /// `aws.dynamodb.consumed_capacity` **UNSTABLE**: The JSON-serialized value of each item in the `ConsumedCapacity` response field.
            ///
            /// - Stability: development
            /// - Type: stringArray
            public static let consumedCapacity = "aws.dynamodb.consumed_capacity"

            /// `aws.dynamodb.count` **UNSTABLE**: The value of the `Count` response parameter.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `10`
            public static let count = "aws.dynamodb.count"

            /// `aws.dynamodb.exclusive_start_table` **UNSTABLE**: The value of the `ExclusiveStartTableName` request parameter.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Users`
            ///     - `CatsTable`
            public static let exclusiveStartTable = "aws.dynamodb.exclusive_start_table"

            /// `aws.dynamodb.global_secondary_index_updates` **UNSTABLE**: The JSON-serialized value of each item in the `GlobalSecondaryIndexUpdates` request field.
            ///
            /// - Stability: development
            /// - Type: stringArray
            public static let globalSecondaryIndexUpdates = "aws.dynamodb.global_secondary_index_updates"

            /// `aws.dynamodb.global_secondary_indexes` **UNSTABLE**: The JSON-serialized value of each item of the `GlobalSecondaryIndexes` request field
            ///
            /// - Stability: development
            /// - Type: stringArray
            public static let globalSecondaryIndexes = "aws.dynamodb.global_secondary_indexes"

            /// `aws.dynamodb.index_name` **UNSTABLE**: The value of the `IndexName` request parameter.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `name_to_group`
            public static let indexName = "aws.dynamodb.index_name"

            /// `aws.dynamodb.item_collection_metrics` **UNSTABLE**: The JSON-serialized value of the `ItemCollectionMetrics` response field.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `{ "string" : [ { "ItemCollectionKey": { "string" : { "B": blob, "BOOL": boolean, "BS": [ blob ], "L": [ "AttributeValue" ], "M": { "string" : "AttributeValue" }, "N": "string", "NS": [ "string" ], "NULL": boolean, "S": "string", "SS": [ "string" ] } }, "SizeEstimateRangeGB": [ number ] } ] }`
            public static let itemCollectionMetrics = "aws.dynamodb.item_collection_metrics"

            /// `aws.dynamodb.limit` **UNSTABLE**: The value of the `Limit` request parameter.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `10`
            public static let limit = "aws.dynamodb.limit"

            /// `aws.dynamodb.local_secondary_indexes` **UNSTABLE**: The JSON-serialized value of each item of the `LocalSecondaryIndexes` request field.
            ///
            /// - Stability: development
            /// - Type: stringArray
            public static let localSecondaryIndexes = "aws.dynamodb.local_secondary_indexes"

            /// `aws.dynamodb.projection` **UNSTABLE**: The value of the `ProjectionExpression` request parameter.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `Title`
            ///     - `Title, Price, Color`
            ///     - `Title, Description, RelatedItems, ProductReviews`
            public static let projection = "aws.dynamodb.projection"

            /// `aws.dynamodb.provisioned_read_capacity` **UNSTABLE**: The value of the `ProvisionedThroughput.ReadCapacityUnits` request parameter.
            ///
            /// - Stability: development
            /// - Type: double
            /// - Examples:
            ///     - `1.0`
            ///     - `2.0`
            public static let provisionedReadCapacity = "aws.dynamodb.provisioned_read_capacity"

            /// `aws.dynamodb.provisioned_write_capacity` **UNSTABLE**: The value of the `ProvisionedThroughput.WriteCapacityUnits` request parameter.
            ///
            /// - Stability: development
            /// - Type: double
            /// - Examples:
            ///     - `1.0`
            ///     - `2.0`
            public static let provisionedWriteCapacity = "aws.dynamodb.provisioned_write_capacity"

            /// `aws.dynamodb.scan_forward` **UNSTABLE**: The value of the `ScanIndexForward` request parameter.
            ///
            /// - Stability: development
            /// - Type: boolean
            public static let scanForward = "aws.dynamodb.scan_forward"

            /// `aws.dynamodb.scanned_count` **UNSTABLE**: The value of the `ScannedCount` response parameter.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `50`
            public static let scannedCount = "aws.dynamodb.scanned_count"

            /// `aws.dynamodb.segment` **UNSTABLE**: The value of the `Segment` request parameter.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `10`
            public static let segment = "aws.dynamodb.segment"

            /// `aws.dynamodb.select` **UNSTABLE**: The value of the `Select` request parameter.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `ALL_ATTRIBUTES`
            ///     - `COUNT`
            public static let select = "aws.dynamodb.select"

            /// `aws.dynamodb.table_count` **UNSTABLE**: The number of items in the `TableNames` response parameter.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `20`
            public static let tableCount = "aws.dynamodb.table_count"

            /// `aws.dynamodb.table_names` **UNSTABLE**: The keys in the `RequestItems` object field.
            ///
            /// - Stability: development
            /// - Type: stringArray
            public static let tableNames = "aws.dynamodb.table_names"

            /// `aws.dynamodb.total_segments` **UNSTABLE**: The value of the `TotalSegments` request parameter.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `100`
            public static let totalSegments = "aws.dynamodb.total_segments"
        }

        /// `aws.ecs` namespace
        public enum ecs {
            /// `aws.ecs.launchtype` **UNSTABLE**: The [launch type](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html) for an ECS task.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `ec2`: Amazon EC2
            ///     - `fargate`: Amazon Fargate
            public static let launchtype = "aws.ecs.launchtype"

            /// `aws.ecs.cluster` namespace
            public enum cluster {
                /// `aws.ecs.cluster.arn` **UNSTABLE**: The ARN of an [ECS cluster](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/clusters.html).
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `arn:aws:ecs:us-west-2:123456789123:cluster/my-cluster`
                public static let arn = "aws.ecs.cluster.arn"
            }

            /// `aws.ecs.container` namespace
            public enum container {
                /// `aws.ecs.container.arn` **UNSTABLE**: The Amazon Resource Name (ARN) of an [ECS container instance](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_instances.html).
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `arn:aws:ecs:us-west-1:123456789123:container/32624152-9086-4f0e-acae-1a75b14fe4d9`
                public static let arn = "aws.ecs.container.arn"
            }

            /// `aws.ecs.task` namespace
            public enum task {
                /// `aws.ecs.task.arn` **UNSTABLE**: The ARN of a running [ECS task](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#ecs-resource-ids).
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `arn:aws:ecs:us-west-1:123456789123:task/10838bed-421f-43ef-870a-f43feacbbb5b`
                ///     - `arn:aws:ecs:us-west-1:123456789123:task/my-cluster/task-id/23ebb8ac-c18f-46c6-8bbe-d55d0e37cfbd`
                public static let arn = "aws.ecs.task.arn"

                /// `aws.ecs.task.family` **UNSTABLE**: The family name of the [ECS task definition](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definitions.html) used to create the ECS task.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `opentelemetry-family`
                public static let family = "aws.ecs.task.family"

                /// `aws.ecs.task.id` **UNSTABLE**: The ID of a running ECS task. The ID MUST be extracted from `task.arn`.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `10838bed-421f-43ef-870a-f43feacbbb5b`
                ///     - `23ebb8ac-c18f-46c6-8bbe-d55d0e37cfbd`
                public static let id = "aws.ecs.task.id"

                /// `aws.ecs.task.revision` **UNSTABLE**: The revision for the task definition used to create the ECS task.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `8`
                ///     - `26`
                public static let revision = "aws.ecs.task.revision"
            }
        }

        /// `aws.eks` namespace
        public enum eks {
            /// `aws.eks.cluster` namespace
            public enum cluster {
                /// `aws.eks.cluster.arn` **UNSTABLE**: The ARN of an EKS cluster.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `arn:aws:ecs:us-west-2:123456789123:cluster/my-cluster`
                public static let arn = "aws.eks.cluster.arn"
            }
        }

        /// `aws.kinesis` namespace
        public enum kinesis {
            /// `aws.kinesis.stream_name` **UNSTABLE**: The name of the AWS Kinesis [stream](https://docs.aws.amazon.com/streams/latest/dev/introduction.html) the request refers to. Corresponds to the `--stream-name` parameter of the Kinesis [describe-stream](https://docs.aws.amazon.com/cli/latest/reference/kinesis/describe-stream.html) operation.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `some-stream-name`
            public static let streamName = "aws.kinesis.stream_name"
        }

        /// `aws.lambda` namespace
        public enum lambda {
            /// `aws.lambda.invoked_arn` **UNSTABLE**: The full invoked ARN as provided on the `Context` passed to the function (`Lambda-Runtime-Invoked-Function-Arn` header on the `/runtime/invocation/next` applicable).
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `arn:aws:lambda:us-east-1:123456:function:myfunction:myalias`
            ///
            /// This may be different from `cloud.resource_id` if an alias is involved.
            public static let invokedArn = "aws.lambda.invoked_arn"

            /// `aws.lambda.resource_mapping` namespace
            public enum resourceMapping {
                /// `aws.lambda.resource_mapping.id` **UNSTABLE**: The UUID of the [AWS Lambda EvenSource Mapping](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html). An event source is mapped to a lambda function. It's contents are read by Lambda and used to trigger a function. This isn't available in the lambda execution context or the lambda runtime environtment. This is going to be populated by the AWS SDK for each language when that UUID is present. Some of these operations are Create/Delete/Get/List/Update EventSourceMapping.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `587ad24b-03b9-4413-8202-bbd56b36e5b7`
                public static let id = "aws.lambda.resource_mapping.id"
            }
        }

        /// `aws.log` namespace
        public enum log {
            /// `aws.log.group` namespace
            public enum group {
                /// `aws.log.group.arns` **UNSTABLE**: The Amazon Resource Name(s) (ARN) of the AWS log group(s).
                ///
                /// - Stability: development
                /// - Type: stringArray
                ///
                /// See the [log group ARN format documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html#CWL_ARN_Format).
                public static let arns = "aws.log.group.arns"

                /// `aws.log.group.names` **UNSTABLE**: The name(s) of the AWS log group(s) an application is writing to.
                ///
                /// - Stability: development
                /// - Type: stringArray
                ///
                /// Multiple log groups must be supported for cases like multi-container applications, where a single application has sidecar containers, and each write to their own log group.
                public static let names = "aws.log.group.names"
            }

            /// `aws.log.stream` namespace
            public enum stream {
                /// `aws.log.stream.arns` **UNSTABLE**: The ARN(s) of the AWS log stream(s).
                ///
                /// - Stability: development
                /// - Type: stringArray
                ///
                /// See the [log stream ARN format documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html#CWL_ARN_Format). One log group can contain several log streams, so these ARNs necessarily identify both a log group and a log stream.
                public static let arns = "aws.log.stream.arns"

                /// `aws.log.stream.names` **UNSTABLE**: The name(s) of the AWS log stream(s) an application is writing to.
                ///
                /// - Stability: development
                /// - Type: stringArray
                public static let names = "aws.log.stream.names"
            }
        }

        /// `aws.s3` namespace
        public enum s3 {
            /// `aws.s3.bucket` **UNSTABLE**: The S3 bucket name the request refers to. Corresponds to the `--bucket` parameter of the [S3 API](https://docs.aws.amazon.com/cli/latest/reference/s3api/index.html) operations.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `some-bucket-name`
            ///
            /// The `bucket` attribute is applicable to all S3 operations that reference a bucket, i.e. that require the bucket name as a mandatory parameter.
            /// This applies to almost all S3 operations except `list-buckets`.
            public static let bucket = "aws.s3.bucket"

            /// `aws.s3.copy_source` **UNSTABLE**: The source object (in the form `bucket`/`key`) for the copy operation.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `someFile.yml`
            ///
            /// The `copy_source` attribute applies to S3 copy operations and corresponds to the `--copy-source` parameter
            /// of the [copy-object operation within the S3 API](https://docs.aws.amazon.com/cli/latest/reference/s3api/copy-object.html).
            /// This applies in particular to the following operations:
            ///
            /// - [copy-object](https://docs.aws.amazon.com/cli/latest/reference/s3api/copy-object.html)
            /// - [upload-part-copy](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part-copy.html)
            public static let copySource = "aws.s3.copy_source"

            /// `aws.s3.delete` **UNSTABLE**: The delete request container that specifies the objects to be deleted.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `Objects=[{Key=string,VersionId=string},{Key=string,VersionId=string}],Quiet=boolean`
            ///
            /// The `delete` attribute is only applicable to the [delete-object](https://docs.aws.amazon.com/cli/latest/reference/s3api/delete-object.html) operation.
            /// The `delete` attribute corresponds to the `--delete` parameter of the
            /// [delete-objects operation within the S3 API](https://docs.aws.amazon.com/cli/latest/reference/s3api/delete-objects.html).
            public static let delete = "aws.s3.delete"

            /// `aws.s3.key` **UNSTABLE**: The S3 object key the request refers to. Corresponds to the `--key` parameter of the [S3 API](https://docs.aws.amazon.com/cli/latest/reference/s3api/index.html) operations.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `someFile.yml`
            ///
            /// The `key` attribute is applicable to all object-related S3 operations, i.e. that require the object key as a mandatory parameter.
            /// This applies in particular to the following operations:
            ///
            /// - [copy-object](https://docs.aws.amazon.com/cli/latest/reference/s3api/copy-object.html)
            /// - [delete-object](https://docs.aws.amazon.com/cli/latest/reference/s3api/delete-object.html)
            /// - [get-object](https://docs.aws.amazon.com/cli/latest/reference/s3api/get-object.html)
            /// - [head-object](https://docs.aws.amazon.com/cli/latest/reference/s3api/head-object.html)
            /// - [put-object](https://docs.aws.amazon.com/cli/latest/reference/s3api/put-object.html)
            /// - [restore-object](https://docs.aws.amazon.com/cli/latest/reference/s3api/restore-object.html)
            /// - [select-object-content](https://docs.aws.amazon.com/cli/latest/reference/s3api/select-object-content.html)
            /// - [abort-multipart-upload](https://docs.aws.amazon.com/cli/latest/reference/s3api/abort-multipart-upload.html)
            /// - [complete-multipart-upload](https://docs.aws.amazon.com/cli/latest/reference/s3api/complete-multipart-upload.html)
            /// - [create-multipart-upload](https://docs.aws.amazon.com/cli/latest/reference/s3api/create-multipart-upload.html)
            /// - [list-parts](https://docs.aws.amazon.com/cli/latest/reference/s3api/list-parts.html)
            /// - [upload-part](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part.html)
            /// - [upload-part-copy](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part-copy.html)
            public static let key = "aws.s3.key"

            /// `aws.s3.part_number` **UNSTABLE**: The part number of the part being uploaded in a multipart-upload operation. This is a positive integer between 1 and 10,000.
            ///
            /// - Stability: development
            /// - Type: int
            /// - Example: `3456`
            ///
            /// The `part_number` attribute is only applicable to the [upload-part](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part.html)
            /// and [upload-part-copy](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part-copy.html) operations.
            /// The `part_number` attribute corresponds to the `--part-number` parameter of the
            /// [upload-part operation within the S3 API](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part.html).
            public static let partNumber = "aws.s3.part_number"

            /// `aws.s3.upload_id` **UNSTABLE**: Upload ID that identifies the multipart upload.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `dfRtDYWFbkRONycy.Yxwh66Yjlx.cph0gtNBtJ`
            ///
            /// The `upload_id` attribute applies to S3 multipart-upload operations and corresponds to the `--upload-id` parameter
            /// of the [S3 API](https://docs.aws.amazon.com/cli/latest/reference/s3api/index.html) multipart operations.
            /// This applies in particular to the following operations:
            ///
            /// - [abort-multipart-upload](https://docs.aws.amazon.com/cli/latest/reference/s3api/abort-multipart-upload.html)
            /// - [complete-multipart-upload](https://docs.aws.amazon.com/cli/latest/reference/s3api/complete-multipart-upload.html)
            /// - [list-parts](https://docs.aws.amazon.com/cli/latest/reference/s3api/list-parts.html)
            /// - [upload-part](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part.html)
            /// - [upload-part-copy](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part-copy.html)
            public static let uploadId = "aws.s3.upload_id"
        }

        /// `aws.secretsmanager` namespace
        public enum secretsmanager {
            /// `aws.secretsmanager.secret` namespace
            public enum secret {
                /// `aws.secretsmanager.secret.arn` **UNSTABLE**: The ARN of the Secret stored in the Secrets Mangger
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `arn:aws:secretsmanager:us-east-1:123456789012:secret:SecretName-6RandomCharacters`
                public static let arn = "aws.secretsmanager.secret.arn"
            }
        }

        /// `aws.sns` namespace
        public enum sns {
            /// `aws.sns.topic` namespace
            public enum topic {
                /// `aws.sns.topic.arn` **UNSTABLE**: The ARN of the AWS SNS Topic. An Amazon SNS [topic](https://docs.aws.amazon.com/sns/latest/dg/sns-create-topic.html) is a logical access point that acts as a communication channel.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `arn:aws:sns:us-east-1:123456789012:mystack-mytopic-NZJ5JSMVGFIE`
                public static let arn = "aws.sns.topic.arn"
            }
        }

        /// `aws.sqs` namespace
        public enum sqs {
            /// `aws.sqs.queue` namespace
            public enum queue {
                /// `aws.sqs.queue.url` **UNSTABLE**: The URL of the AWS SQS Queue. It's a unique identifier for a queue in Amazon Simple Queue Service (SQS) and is used to access the queue and perform actions on it.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `https://sqs.us-east-1.amazonaws.com/123456789012/MyQueue`
                public static let url = "aws.sqs.queue.url"
            }
        }

        /// `aws.step_functions` namespace
        public enum stepFunctions {
            /// `aws.step_functions.activity` namespace
            public enum activity {
                /// `aws.step_functions.activity.arn` **UNSTABLE**: The ARN of the AWS Step Functions Activity.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `arn:aws:states:us-east-1:123456789012:activity:get-greeting`
                public static let arn = "aws.step_functions.activity.arn"
            }

            /// `aws.step_functions.state_machine` namespace
            public enum stateMachine {
                /// `aws.step_functions.state_machine.arn` **UNSTABLE**: The ARN of the AWS Step Functions State Machine.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `arn:aws:states:us-east-1:123456789012:stateMachine:myStateMachine:1`
                public static let arn = "aws.step_functions.state_machine.arn"
            }
        }
    }
    #endif
}
