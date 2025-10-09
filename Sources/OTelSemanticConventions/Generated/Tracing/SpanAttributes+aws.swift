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

#if Tracing

import Tracing

extension SpanAttributes {
    #if Experimental
    /// `aws` namespace
    public var aws: AwsAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct AwsAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `aws.extended_request_id`: The AWS extended request ID as returned in the response header `x-amz-id-2`.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `wzHcyEWfmOGDIE5QOhTAqFDoDWP3y8IUvpNINCwL9N4TEHbUw0/gZJ+VZTmCNCWR7fezEN3eCiQ=`
            public var extendedRequestId: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.extendedRequestId) }

            /// `aws.request_id`: The AWS request ID as returned in the response headers `x-amzn-requestid`, `x-amzn-request-id` or `x-amz-request-id`.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `79b9da39-b7ae-508a-a6bc-864b2829c622`
            ///     - `C9ER4AJX75574TDJ`
            public var requestId: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.requestId) }
        }

        /// `aws.bedrock` namespace
        public var bedrock: BedrockAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct BedrockAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `aws.bedrock.guardrail` namespace
            public var guardrail: GuardrailAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct GuardrailAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `aws.bedrock.guardrail.id`: The unique identifier of the AWS Bedrock Guardrail. A [guardrail](https://docs.aws.amazon.com/bedrock/latest/userguide/guardrails.html) helps safeguard and prevent unwanted behavior from model responses or user messages.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `sgi5gkybzqak`
                    public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.bedrock.guardrail.id) }
                }
            }

            /// `aws.bedrock.knowledge_base` namespace
            public var knowledgeBase: KnowledgeBaseAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct KnowledgeBaseAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `aws.bedrock.knowledge_base.id`: The unique identifier of the AWS Bedrock Knowledge base. A [knowledge base](https://docs.aws.amazon.com/bedrock/latest/userguide/knowledge-base.html) is a bank of information that can be queried by models to generate more relevant responses and augment prompts.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `XFWUPB9PAW`
                    public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.bedrock.knowledgeBase.id) }
                }
            }
        }

        /// `aws.dynamodb` namespace
        public var dynamodb: DynamodbAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct DynamodbAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `aws.dynamodb.attribute_definitions`: The JSON-serialized value of each item in the `AttributeDefinitions` request field.
                ///
                /// - Stability: development
                /// - Type: stringArray
                public var attributeDefinitions: SpanAttributeKey<[String]> {
                    .init(name: OTelAttribute.aws.dynamodb.attributeDefinitions)
                }

                /// `aws.dynamodb.attributes_to_get`: The value of the `AttributesToGet` request parameter.
                ///
                /// - Stability: development
                /// - Type: stringArray
                public var attributesToGet: SpanAttributeKey<[String]> {
                    .init(name: OTelAttribute.aws.dynamodb.attributesToGet)
                }

                /// `aws.dynamodb.consistent_read`: The value of the `ConsistentRead` request parameter.
                ///
                /// - Stability: development
                /// - Type: boolean
                public var consistentRead: SpanAttributeKey<Bool> {
                    .init(name: OTelAttribute.aws.dynamodb.consistentRead)
                }

                /// `aws.dynamodb.consumed_capacity`: The JSON-serialized value of each item in the `ConsumedCapacity` response field.
                ///
                /// - Stability: development
                /// - Type: stringArray
                public var consumedCapacity: SpanAttributeKey<[String]> {
                    .init(name: OTelAttribute.aws.dynamodb.consumedCapacity)
                }

                /// `aws.dynamodb.count`: The value of the `Count` response parameter.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `10`
                public var count: SpanAttributeKey<Int> { .init(name: OTelAttribute.aws.dynamodb.count) }

                /// `aws.dynamodb.exclusive_start_table`: The value of the `ExclusiveStartTableName` request parameter.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `Users`
                ///     - `CatsTable`
                public var exclusiveStartTable: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.aws.dynamodb.exclusiveStartTable)
                }

                /// `aws.dynamodb.global_secondary_index_updates`: The JSON-serialized value of each item in the `GlobalSecondaryIndexUpdates` request field.
                ///
                /// - Stability: development
                /// - Type: stringArray
                public var globalSecondaryIndexUpdates: SpanAttributeKey<[String]> {
                    .init(name: OTelAttribute.aws.dynamodb.globalSecondaryIndexUpdates)
                }

                /// `aws.dynamodb.global_secondary_indexes`: The JSON-serialized value of each item of the `GlobalSecondaryIndexes` request field
                ///
                /// - Stability: development
                /// - Type: stringArray
                public var globalSecondaryIndexes: SpanAttributeKey<[String]> {
                    .init(name: OTelAttribute.aws.dynamodb.globalSecondaryIndexes)
                }

                /// `aws.dynamodb.index_name`: The value of the `IndexName` request parameter.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `name_to_group`
                public var indexName: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.dynamodb.indexName) }

                /// `aws.dynamodb.item_collection_metrics`: The JSON-serialized value of the `ItemCollectionMetrics` response field.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `{ "string" : [ { "ItemCollectionKey": { "string" : { "B": blob, "BOOL": boolean, "BS": [ blob ], "L": [ "AttributeValue" ], "M": { "string" : "AttributeValue" }, "N": "string", "NS": [ "string" ], "NULL": boolean, "S": "string", "SS": [ "string" ] } }, "SizeEstimateRangeGB": [ number ] } ] }`
                public var itemCollectionMetrics: SpanAttributeKey<String> {
                    .init(name: OTelAttribute.aws.dynamodb.itemCollectionMetrics)
                }

                /// `aws.dynamodb.limit`: The value of the `Limit` request parameter.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `10`
                public var limit: SpanAttributeKey<Int> { .init(name: OTelAttribute.aws.dynamodb.limit) }

                /// `aws.dynamodb.local_secondary_indexes`: The JSON-serialized value of each item of the `LocalSecondaryIndexes` request field.
                ///
                /// - Stability: development
                /// - Type: stringArray
                public var localSecondaryIndexes: SpanAttributeKey<[String]> {
                    .init(name: OTelAttribute.aws.dynamodb.localSecondaryIndexes)
                }

                /// `aws.dynamodb.projection`: The value of the `ProjectionExpression` request parameter.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `Title`
                ///     - `Title, Price, Color`
                ///     - `Title, Description, RelatedItems, ProductReviews`
                public var projection: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.dynamodb.projection) }

                /// `aws.dynamodb.provisioned_read_capacity`: The value of the `ProvisionedThroughput.ReadCapacityUnits` request parameter.
                ///
                /// - Stability: development
                /// - Type: double
                /// - Examples:
                ///     - `1.0`
                ///     - `2.0`
                public var provisionedReadCapacity: SpanAttributeKey<Double> {
                    .init(name: OTelAttribute.aws.dynamodb.provisionedReadCapacity)
                }

                /// `aws.dynamodb.provisioned_write_capacity`: The value of the `ProvisionedThroughput.WriteCapacityUnits` request parameter.
                ///
                /// - Stability: development
                /// - Type: double
                /// - Examples:
                ///     - `1.0`
                ///     - `2.0`
                public var provisionedWriteCapacity: SpanAttributeKey<Double> {
                    .init(name: OTelAttribute.aws.dynamodb.provisionedWriteCapacity)
                }

                /// `aws.dynamodb.scan_forward`: The value of the `ScanIndexForward` request parameter.
                ///
                /// - Stability: development
                /// - Type: boolean
                public var scanForward: SpanAttributeKey<Bool> { .init(name: OTelAttribute.aws.dynamodb.scanForward) }

                /// `aws.dynamodb.scanned_count`: The value of the `ScannedCount` response parameter.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `50`
                public var scannedCount: SpanAttributeKey<Int> { .init(name: OTelAttribute.aws.dynamodb.scannedCount) }

                /// `aws.dynamodb.segment`: The value of the `Segment` request parameter.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `10`
                public var segment: SpanAttributeKey<Int> { .init(name: OTelAttribute.aws.dynamodb.segment) }

                /// `aws.dynamodb.select`: The value of the `Select` request parameter.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `ALL_ATTRIBUTES`
                ///     - `COUNT`
                public var select: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.dynamodb.select) }

                /// `aws.dynamodb.table_count`: The number of items in the `TableNames` response parameter.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `20`
                public var tableCount: SpanAttributeKey<Int> { .init(name: OTelAttribute.aws.dynamodb.tableCount) }

                /// `aws.dynamodb.table_names`: The keys in the `RequestItems` object field.
                ///
                /// - Stability: development
                /// - Type: stringArray
                public var tableNames: SpanAttributeKey<[String]> { .init(name: OTelAttribute.aws.dynamodb.tableNames) }

                /// `aws.dynamodb.total_segments`: The value of the `TotalSegments` request parameter.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `100`
                public var totalSegments: SpanAttributeKey<Int> {
                    .init(name: OTelAttribute.aws.dynamodb.totalSegments)
                }
            }
        }

        /// `aws.ecs` namespace
        public var ecs: EcsAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct EcsAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `aws.ecs.launchtype`: The [launch type](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/launch_types.html) for an ECS task.
                ///
                /// - Stability: development
                /// - Type: enum
                ///     - `ec2`: Amazon EC2
                ///     - `fargate`: Amazon Fargate
                public var launchtype: SpanAttributeKey<LaunchtypeEnum> {
                    .init(name: OTelAttribute.aws.ecs.launchtype)
                }

                public struct LaunchtypeEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                    public let rawValue: String
                    public init(rawValue: String) {
                        self.rawValue = rawValue
                    }
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        .string(self.rawValue)
                    }
                }
            }

            /// `aws.ecs.cluster` namespace
            public var cluster: ClusterAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ClusterAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `aws.ecs.cluster.arn`: The ARN of an [ECS cluster](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/clusters.html).
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `arn:aws:ecs:us-west-2:123456789123:cluster/my-cluster`
                    public var arn: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.ecs.cluster.arn) }
                }
            }

            /// `aws.ecs.container` namespace
            public var container: ContainerAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ContainerAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `aws.ecs.container.arn`: The Amazon Resource Name (ARN) of an [ECS container instance](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ECS_instances.html).
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `arn:aws:ecs:us-west-1:123456789123:container/32624152-9086-4f0e-acae-1a75b14fe4d9`
                    public var arn: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.ecs.container.arn) }
                }
            }

            /// `aws.ecs.task` namespace
            public var task: TaskAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct TaskAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `aws.ecs.task.arn`: The ARN of a running [ECS task](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/ecs-account-settings.html#ecs-resource-ids).
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `arn:aws:ecs:us-west-1:123456789123:task/10838bed-421f-43ef-870a-f43feacbbb5b`
                    ///     - `arn:aws:ecs:us-west-1:123456789123:task/my-cluster/task-id/23ebb8ac-c18f-46c6-8bbe-d55d0e37cfbd`
                    public var arn: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.ecs.task.arn) }

                    /// `aws.ecs.task.family`: The family name of the [ECS task definition](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/task_definitions.html) used to create the ECS task.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `opentelemetry-family`
                    public var family: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.ecs.task.family) }

                    /// `aws.ecs.task.id`: The ID of a running ECS task. The ID MUST be extracted from `task.arn`.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `10838bed-421f-43ef-870a-f43feacbbb5b`
                    ///     - `23ebb8ac-c18f-46c6-8bbe-d55d0e37cfbd`
                    public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.ecs.task.id) }

                    /// `aws.ecs.task.revision`: The revision for the task definition used to create the ECS task.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Examples:
                    ///     - `8`
                    ///     - `26`
                    public var revision: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.ecs.task.revision) }
                }
            }
        }

        /// `aws.eks` namespace
        public var eks: EksAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct EksAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `aws.eks.cluster` namespace
            public var cluster: ClusterAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ClusterAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `aws.eks.cluster.arn`: The ARN of an EKS cluster.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `arn:aws:ecs:us-west-2:123456789123:cluster/my-cluster`
                    public var arn: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.eks.cluster.arn) }
                }
            }
        }

        /// `aws.kinesis` namespace
        public var kinesis: KinesisAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct KinesisAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `aws.kinesis.stream_name`: The name of the AWS Kinesis [stream](https://docs.aws.amazon.com/streams/latest/dev/introduction.html) the request refers to. Corresponds to the `--stream-name` parameter of the Kinesis [describe-stream](https://docs.aws.amazon.com/cli/latest/reference/kinesis/describe-stream.html) operation.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `some-stream-name`
                public var streamName: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.kinesis.streamName) }
            }
        }

        /// `aws.lambda` namespace
        public var lambda: LambdaAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct LambdaAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `aws.lambda.invoked_arn`: The full invoked ARN as provided on the `Context` passed to the function (`Lambda-Runtime-Invoked-Function-Arn` header on the `/runtime/invocation/next` applicable).
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `arn:aws:lambda:us-east-1:123456:function:myfunction:myalias`
                ///
                /// This may be different from `cloud.resource_id` if an alias is involved.
                public var invokedArn: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.lambda.invokedArn) }
            }

            /// `aws.lambda.resource_mapping` namespace
            public var resourceMapping: ResourceMappingAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ResourceMappingAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `aws.lambda.resource_mapping.id`: The UUID of the [AWS Lambda EvenSource Mapping](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-lambda-eventsourcemapping.html). An event source is mapped to a lambda function. It's contents are read by Lambda and used to trigger a function. This isn't available in the lambda execution context or the lambda runtime environtment. This is going to be populated by the AWS SDK for each language when that UUID is present. Some of these operations are Create/Delete/Get/List/Update EventSourceMapping.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `587ad24b-03b9-4413-8202-bbd56b36e5b7`
                    public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.lambda.resourceMapping.id) }
                }
            }
        }

        /// `aws.log` namespace
        public var log: LogAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct LogAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `aws.log.group` namespace
            public var group: GroupAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct GroupAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `aws.log.group.arns`: The Amazon Resource Name(s) (ARN) of the AWS log group(s).
                    ///
                    /// - Stability: development
                    /// - Type: stringArray
                    ///
                    /// See the [log group ARN format documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html#CWL_ARN_Format).
                    public var arns: SpanAttributeKey<[String]> { .init(name: OTelAttribute.aws.log.group.arns) }

                    /// `aws.log.group.names`: The name(s) of the AWS log group(s) an application is writing to.
                    ///
                    /// - Stability: development
                    /// - Type: stringArray
                    ///
                    /// Multiple log groups must be supported for cases like multi-container applications, where a single application has sidecar containers, and each write to their own log group.
                    public var names: SpanAttributeKey<[String]> { .init(name: OTelAttribute.aws.log.group.names) }
                }
            }

            /// `aws.log.stream` namespace
            public var stream: StreamAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct StreamAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `aws.log.stream.arns`: The ARN(s) of the AWS log stream(s).
                    ///
                    /// - Stability: development
                    /// - Type: stringArray
                    ///
                    /// See the [log stream ARN format documentation](https://docs.aws.amazon.com/AmazonCloudWatch/latest/logs/iam-access-control-overview-cwl.html#CWL_ARN_Format). One log group can contain several log streams, so these ARNs necessarily identify both a log group and a log stream.
                    public var arns: SpanAttributeKey<[String]> { .init(name: OTelAttribute.aws.log.stream.arns) }

                    /// `aws.log.stream.names`: The name(s) of the AWS log stream(s) an application is writing to.
                    ///
                    /// - Stability: development
                    /// - Type: stringArray
                    public var names: SpanAttributeKey<[String]> { .init(name: OTelAttribute.aws.log.stream.names) }
                }
            }
        }

        /// `aws.s3` namespace
        public var s3: S3Attributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct S3Attributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `aws.s3.bucket`: The S3 bucket name the request refers to. Corresponds to the `--bucket` parameter of the [S3 API](https://docs.aws.amazon.com/cli/latest/reference/s3api/index.html) operations.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `some-bucket-name`
                ///
                /// The `bucket` attribute is applicable to all S3 operations that reference a bucket, i.e. that require the bucket name as a mandatory parameter.
                /// This applies to almost all S3 operations except `list-buckets`.
                public var bucket: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.s3.bucket) }

                /// `aws.s3.copy_source`: The source object (in the form `bucket`/`key`) for the copy operation.
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
                public var copySource: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.s3.copySource) }

                /// `aws.s3.delete`: The delete request container that specifies the objects to be deleted.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Example: `Objects=[{Key=string,VersionId=string},{Key=string,VersionId=string}],Quiet=boolean`
                ///
                /// The `delete` attribute is only applicable to the [delete-object](https://docs.aws.amazon.com/cli/latest/reference/s3api/delete-object.html) operation.
                /// The `delete` attribute corresponds to the `--delete` parameter of the
                /// [delete-objects operation within the S3 API](https://docs.aws.amazon.com/cli/latest/reference/s3api/delete-objects.html).
                public var delete: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.s3.delete) }

                /// `aws.s3.key`: The S3 object key the request refers to. Corresponds to the `--key` parameter of the [S3 API](https://docs.aws.amazon.com/cli/latest/reference/s3api/index.html) operations.
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
                public var key: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.s3.key) }

                /// `aws.s3.part_number`: The part number of the part being uploaded in a multipart-upload operation. This is a positive integer between 1 and 10,000.
                ///
                /// - Stability: development
                /// - Type: int
                /// - Example: `3456`
                ///
                /// The `part_number` attribute is only applicable to the [upload-part](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part.html)
                /// and [upload-part-copy](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part-copy.html) operations.
                /// The `part_number` attribute corresponds to the `--part-number` parameter of the
                /// [upload-part operation within the S3 API](https://docs.aws.amazon.com/cli/latest/reference/s3api/upload-part.html).
                public var partNumber: SpanAttributeKey<Int> { .init(name: OTelAttribute.aws.s3.partNumber) }

                /// `aws.s3.upload_id`: Upload ID that identifies the multipart upload.
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
                public var uploadId: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.s3.uploadId) }
            }
        }

        /// `aws.secretsmanager` namespace
        public var secretsmanager: SecretsmanagerAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SecretsmanagerAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `aws.secretsmanager.secret` namespace
            public var secret: SecretAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct SecretAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `aws.secretsmanager.secret.arn`: The ARN of the Secret stored in the Secrets Mangger
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `arn:aws:secretsmanager:us-east-1:123456789012:secret:SecretName-6RandomCharacters`
                    public var arn: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.aws.secretsmanager.secret.arn)
                    }
                }
            }
        }

        /// `aws.sns` namespace
        public var sns: SnsAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SnsAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `aws.sns.topic` namespace
            public var topic: TopicAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct TopicAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `aws.sns.topic.arn`: The ARN of the AWS SNS Topic. An Amazon SNS [topic](https://docs.aws.amazon.com/sns/latest/dg/sns-create-topic.html) is a logical access point that acts as a communication channel.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `arn:aws:sns:us-east-1:123456789012:mystack-mytopic-NZJ5JSMVGFIE`
                    public var arn: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.sns.topic.arn) }
                }
            }
        }

        /// `aws.sqs` namespace
        public var sqs: SqsAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct SqsAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `aws.sqs.queue` namespace
            public var queue: QueueAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct QueueAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `aws.sqs.queue.url`: The URL of the AWS SQS Queue. It's a unique identifier for a queue in Amazon Simple Queue Service (SQS) and is used to access the queue and perform actions on it.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `https://sqs.us-east-1.amazonaws.com/123456789012/MyQueue`
                    public var url: SpanAttributeKey<String> { .init(name: OTelAttribute.aws.sqs.queue.url) }
                }
            }
        }

        /// `aws.step_functions` namespace
        public var stepFunctions: StepFunctionsAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct StepFunctionsAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
            }

            /// `aws.step_functions.activity` namespace
            public var activity: ActivityAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct ActivityAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `aws.step_functions.activity.arn`: The ARN of the AWS Step Functions Activity.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `arn:aws:states:us-east-1:123456789012:activity:get-greeting`
                    public var arn: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.aws.stepFunctions.activity.arn)
                    }
                }
            }

            /// `aws.step_functions.state_machine` namespace
            public var stateMachine: StateMachineAttributes {
                get {
                    .init(attributes: self.attributes)
                }
                set {
                    self.attributes = newValue.attributes
                }
            }

            @dynamicMemberLookup
            public struct StateMachineAttributes: SpanAttributeNamespace {
                public var attributes: Tracing.SpanAttributes

                public init(attributes: Tracing.SpanAttributes) {
                    self.attributes = attributes
                }

                public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                    public init() {}

                    /// `aws.step_functions.state_machine.arn`: The ARN of the AWS Step Functions State Machine.
                    ///
                    /// - Stability: development
                    /// - Type: string
                    /// - Example: `arn:aws:states:us-east-1:123456789012:stateMachine:myStateMachine:1`
                    public var arn: SpanAttributeKey<String> {
                        .init(name: OTelAttribute.aws.stepFunctions.stateMachine.arn)
                    }
                }
            }
        }
    }
    #endif
}

#endif
