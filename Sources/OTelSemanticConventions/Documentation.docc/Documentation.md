# ``OTelSemanticConventions``

OpenTelemetry semantic conventions for Swift.

@Metadata {
    @DisplayName("OTel Semantic Conventions")
    @PageColor(orange)
    @Available(Swift, introduced: 6.1)
}

@Options {
    @TopicsVisualStyle(hidden)
}


## Android Attributes

The Android platform on which the Android application is running.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AndroidAttributes/AppAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/AndroidAttributes/OsAttributes/NestedSpanAttributes/apiLevel``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/android/app/state``
            - ``OTelAttribute/android/os/apiLevel``
        }
    }
}

## Deprecated Android Attributes

This document defines attributes that represents an occurrence of a lifecycle transition on the Android platform.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AndroidAttributes/NestedSpanAttributes/state``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/android/state``
        }
    }
}

## Application Attributes

Describes attributes related to client-side applications (e.g. web apps or mobile apps).

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AppAttributes/NestedSpanAttributes/buildId``
            - ``Tracing/SpanAttributes/AppAttributes/InstallationAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/AppAttributes/JankAttributes/NestedSpanAttributes/frameCount``
            - ``Tracing/SpanAttributes/AppAttributes/JankAttributes/NestedSpanAttributes/period``
            - ``Tracing/SpanAttributes/AppAttributes/JankAttributes/NestedSpanAttributes/threshold``
            - ``Tracing/SpanAttributes/AppAttributes/ScreenAttributes/CoordinateAttributes/NestedSpanAttributes/x``
            - ``Tracing/SpanAttributes/AppAttributes/ScreenAttributes/CoordinateAttributes/NestedSpanAttributes/y``
            - ``Tracing/SpanAttributes/AppAttributes/ScreenAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/AppAttributes/ScreenAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/AppAttributes/WidgetAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/AppAttributes/WidgetAttributes/NestedSpanAttributes/name``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/app/buildId``
            - ``OTelAttribute/app/installation/id``
            - ``OTelAttribute/app/jank/frameCount``
            - ``OTelAttribute/app/jank/period``
            - ``OTelAttribute/app/jank/threshold``
            - ``OTelAttribute/app/screen/coordinate/x``
            - ``OTelAttribute/app/screen/coordinate/y``
            - ``OTelAttribute/app/screen/id``
            - ``OTelAttribute/app/screen/name``
            - ``OTelAttribute/app/widget/id``
            - ``OTelAttribute/app/widget/name``
        }
    }
}

## Artifact Attributes

This group describes attributes specific to artifacts. Artifacts are files or other immutable objects that are intended for distribution. This definition aligns directly with the [SLSA](https://slsa.dev/spec/v1.0/terminology#package-model) package model.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ArtifactAttributes/AttestationAttributes/NestedSpanAttributes/filename``
            - ``Tracing/SpanAttributes/ArtifactAttributes/AttestationAttributes/NestedSpanAttributes/hash``
            - ``Tracing/SpanAttributes/ArtifactAttributes/AttestationAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/ArtifactAttributes/NestedSpanAttributes/filename``
            - ``Tracing/SpanAttributes/ArtifactAttributes/NestedSpanAttributes/hash``
            - ``Tracing/SpanAttributes/ArtifactAttributes/NestedSpanAttributes/purl``
            - ``Tracing/SpanAttributes/ArtifactAttributes/NestedSpanAttributes/version``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/artifact/attestation/filename``
            - ``OTelAttribute/artifact/attestation/hash``
            - ``OTelAttribute/artifact/attestation/id``
            - ``OTelAttribute/artifact/filename``
            - ``OTelAttribute/artifact/hash``
            - ``OTelAttribute/artifact/purl``
            - ``OTelAttribute/artifact/version``
        }
    }
}

## General AWS Attributes

This section defines generic attributes for AWS services.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AwsAttributes/NestedSpanAttributes/extendedRequestId``
            - ``Tracing/SpanAttributes/AwsAttributes/NestedSpanAttributes/requestId``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/aws/extendedRequestId``
            - ``OTelAttribute/aws/requestId``
        }
    }
}

## Amazon Bedrock Attributes

This document defines attributes for AWS Bedrock.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AwsAttributes/BedrockAttributes/GuardrailAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/AwsAttributes/BedrockAttributes/KnowledgeBaseAttributes/NestedSpanAttributes/id``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/aws/bedrock/guardrail/id``
            - ``OTelAttribute/aws/bedrock/knowledgeBase/id``
        }
    }
}

## Amazon DynamoDB Attributes

This document defines attributes for AWS DynamoDB.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/attributeDefinitions``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/attributesToGet``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/consistentRead``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/consumedCapacity``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/count``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/exclusiveStartTable``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/globalSecondaryIndexUpdates``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/globalSecondaryIndexes``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/indexName``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/itemCollectionMetrics``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/limit``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/localSecondaryIndexes``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/projection``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/provisionedReadCapacity``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/provisionedWriteCapacity``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/scanForward``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/scannedCount``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/segment``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/select``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/tableCount``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/tableNames``
            - ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/totalSegments``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/aws/dynamodb/attributeDefinitions``
            - ``OTelAttribute/aws/dynamodb/attributesToGet``
            - ``OTelAttribute/aws/dynamodb/consistentRead``
            - ``OTelAttribute/aws/dynamodb/consumedCapacity``
            - ``OTelAttribute/aws/dynamodb/count``
            - ``OTelAttribute/aws/dynamodb/exclusiveStartTable``
            - ``OTelAttribute/aws/dynamodb/globalSecondaryIndexUpdates``
            - ``OTelAttribute/aws/dynamodb/globalSecondaryIndexes``
            - ``OTelAttribute/aws/dynamodb/indexName``
            - ``OTelAttribute/aws/dynamodb/itemCollectionMetrics``
            - ``OTelAttribute/aws/dynamodb/limit``
            - ``OTelAttribute/aws/dynamodb/localSecondaryIndexes``
            - ``OTelAttribute/aws/dynamodb/projection``
            - ``OTelAttribute/aws/dynamodb/provisionedReadCapacity``
            - ``OTelAttribute/aws/dynamodb/provisionedWriteCapacity``
            - ``OTelAttribute/aws/dynamodb/scanForward``
            - ``OTelAttribute/aws/dynamodb/scannedCount``
            - ``OTelAttribute/aws/dynamodb/segment``
            - ``OTelAttribute/aws/dynamodb/select``
            - ``OTelAttribute/aws/dynamodb/tableCount``
            - ``OTelAttribute/aws/dynamodb/tableNames``
            - ``OTelAttribute/aws/dynamodb/totalSegments``
        }
    }
}

## Amazon ECS Attributes

This document defines attributes for AWS Elastic Container Service (ECS).

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AwsAttributes/EcsAttributes/ClusterAttributes/NestedSpanAttributes/arn``
            - ``Tracing/SpanAttributes/AwsAttributes/EcsAttributes/ContainerAttributes/NestedSpanAttributes/arn``
            - ``Tracing/SpanAttributes/AwsAttributes/EcsAttributes/NestedSpanAttributes/launchtype``
            - ``Tracing/SpanAttributes/AwsAttributes/EcsAttributes/TaskAttributes/NestedSpanAttributes/arn``
            - ``Tracing/SpanAttributes/AwsAttributes/EcsAttributes/TaskAttributes/NestedSpanAttributes/family``
            - ``Tracing/SpanAttributes/AwsAttributes/EcsAttributes/TaskAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/AwsAttributes/EcsAttributes/TaskAttributes/NestedSpanAttributes/revision``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/aws/ecs/cluster/arn``
            - ``OTelAttribute/aws/ecs/container/arn``
            - ``OTelAttribute/aws/ecs/launchtype``
            - ``OTelAttribute/aws/ecs/task/arn``
            - ``OTelAttribute/aws/ecs/task/family``
            - ``OTelAttribute/aws/ecs/task/id``
            - ``OTelAttribute/aws/ecs/task/revision``
        }
    }
}

## Amazon EKS Attributes

This document defines attributes for AWS Elastic Kubernetes Service (EKS).

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AwsAttributes/EksAttributes/ClusterAttributes/NestedSpanAttributes/arn``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/aws/eks/cluster/arn``
        }
    }
}

## Amazon Kinesis Attributes

This document defines attributes for AWS Kinesis.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AwsAttributes/KinesisAttributes/NestedSpanAttributes/streamName``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/aws/kinesis/streamName``
        }
    }
}

## Amazon Lambda Attributes

This document defines attributes for AWS Lambda.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AwsAttributes/LambdaAttributes/NestedSpanAttributes/invokedArn``
            - ``Tracing/SpanAttributes/AwsAttributes/LambdaAttributes/ResourceMappingAttributes/NestedSpanAttributes/id``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/aws/lambda/invokedArn``
            - ``OTelAttribute/aws/lambda/resourceMapping/id``
        }
    }
}

## Amazon Logs Attributes

This document defines attributes for AWS Logs.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AwsAttributes/LogAttributes/GroupAttributes/NestedSpanAttributes/arns``
            - ``Tracing/SpanAttributes/AwsAttributes/LogAttributes/GroupAttributes/NestedSpanAttributes/names``
            - ``Tracing/SpanAttributes/AwsAttributes/LogAttributes/StreamAttributes/NestedSpanAttributes/arns``
            - ``Tracing/SpanAttributes/AwsAttributes/LogAttributes/StreamAttributes/NestedSpanAttributes/names``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/aws/log/group/arns``
            - ``OTelAttribute/aws/log/group/names``
            - ``OTelAttribute/aws/log/stream/arns``
            - ``OTelAttribute/aws/log/stream/names``
        }
    }
}

## Amazon S3 Attributes

This document defines attributes for AWS S3.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AwsAttributes/S3Attributes/NestedSpanAttributes/bucket``
            - ``Tracing/SpanAttributes/AwsAttributes/S3Attributes/NestedSpanAttributes/copySource``
            - ``Tracing/SpanAttributes/AwsAttributes/S3Attributes/NestedSpanAttributes/delete``
            - ``Tracing/SpanAttributes/AwsAttributes/S3Attributes/NestedSpanAttributes/key``
            - ``Tracing/SpanAttributes/AwsAttributes/S3Attributes/NestedSpanAttributes/partNumber``
            - ``Tracing/SpanAttributes/AwsAttributes/S3Attributes/NestedSpanAttributes/uploadId``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/aws/s3/bucket``
            - ``OTelAttribute/aws/s3/copySource``
            - ``OTelAttribute/aws/s3/delete``
            - ``OTelAttribute/aws/s3/key``
            - ``OTelAttribute/aws/s3/partNumber``
            - ``OTelAttribute/aws/s3/uploadId``
        }
    }
}

## Amazon Secrets Manager Attributes

This document defines attributes for AWS Secrets Manager.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AwsAttributes/SecretsmanagerAttributes/SecretAttributes/NestedSpanAttributes/arn``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/aws/secretsmanager/secret/arn``
        }
    }
}

## Amazon SNS Attributes

This document defines attributes for AWS SNS.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AwsAttributes/SnsAttributes/TopicAttributes/NestedSpanAttributes/arn``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/aws/sns/topic/arn``
        }
    }
}

## Amazon SQS Attributes

This document defines attributes for AWS SQS.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AwsAttributes/SqsAttributes/QueueAttributes/NestedSpanAttributes/url``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/aws/sqs/queue/url``
        }
    }
}

## Amazon Step Functions Attributes

This document defines attributes for AWS Step Functions.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AwsAttributes/StepFunctionsAttributes/ActivityAttributes/NestedSpanAttributes/arn``
            - ``Tracing/SpanAttributes/AwsAttributes/StepFunctionsAttributes/StateMachineAttributes/NestedSpanAttributes/arn``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/aws/stepFunctions/activity/arn``
            - ``OTelAttribute/aws/stepFunctions/stateMachine/arn``
        }
    }
}

## Azure Client Library Attributes

This section defines generic attributes used by Azure Client Libraries.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AzureAttributes/ClientAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/AzureAttributes/ResourceProviderAttributes/NestedSpanAttributes/namespace``
            - ``Tracing/SpanAttributes/AzureAttributes/ServiceAttributes/RequestAttributes/NestedSpanAttributes/id``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/azure/client/id``
            - ``OTelAttribute/azure/resourceProvider/namespace``
            - ``OTelAttribute/azure/service/request/id``
        }
    }
}

## Azure Cosmos DB Attributes

This section defines attributes for Azure Cosmos DB.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AzureAttributes/CosmosdbAttributes/ConnectionAttributes/NestedSpanAttributes/mode``
            - ``Tracing/SpanAttributes/AzureAttributes/CosmosdbAttributes/ConsistencyAttributes/NestedSpanAttributes/level``
            - ``Tracing/SpanAttributes/AzureAttributes/CosmosdbAttributes/OperationAttributes/NestedSpanAttributes/contactedRegions``
            - ``Tracing/SpanAttributes/AzureAttributes/CosmosdbAttributes/OperationAttributes/NestedSpanAttributes/requestCharge``
            - ``Tracing/SpanAttributes/AzureAttributes/CosmosdbAttributes/RequestAttributes/BodyAttributes/NestedSpanAttributes/size``
            - ``Tracing/SpanAttributes/AzureAttributes/CosmosdbAttributes/ResponseAttributes/NestedSpanAttributes/subStatusCode``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/azure/cosmosdb/connection/mode``
            - ``OTelAttribute/azure/cosmosdb/consistency/level``
            - ``OTelAttribute/azure/cosmosdb/operation/contactedRegions``
            - ``OTelAttribute/azure/cosmosdb/operation/requestCharge``
            - ``OTelAttribute/azure/cosmosdb/request/body/size``
            - ``OTelAttribute/azure/cosmosdb/response/subStatusCode``
        }
    }
}

## Deprecated Azure Attributes

This section describes deprecated Azure attributes.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/AzAttributes/NestedSpanAttributes/namespace``
            - ``Tracing/SpanAttributes/AzAttributes/NestedSpanAttributes/serviceRequestId``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/az/namespace``
            - ``OTelAttribute/az/serviceRequestId``
        }
    }
}

## Browser Attributes

The web browser attributes

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/BrowserAttributes/NestedSpanAttributes/brands``
            - ``Tracing/SpanAttributes/BrowserAttributes/NestedSpanAttributes/language``
            - ``Tracing/SpanAttributes/BrowserAttributes/NestedSpanAttributes/mobile``
            - ``Tracing/SpanAttributes/BrowserAttributes/NestedSpanAttributes/platform``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/browser/brands``
            - ``OTelAttribute/browser/language``
            - ``OTelAttribute/browser/mobile``
            - ``OTelAttribute/browser/platform``
        }
    }
}

## Cassandra Attributes

This section defines attributes for Cassandra.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/CassandraAttributes/ConsistencyAttributes/NestedSpanAttributes/level``
            - ``Tracing/SpanAttributes/CassandraAttributes/CoordinatorAttributes/NestedSpanAttributes/dc``
            - ``Tracing/SpanAttributes/CassandraAttributes/CoordinatorAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/CassandraAttributes/PageAttributes/NestedSpanAttributes/size``
            - ``Tracing/SpanAttributes/CassandraAttributes/QueryAttributes/NestedSpanAttributes/idempotent``
            - ``Tracing/SpanAttributes/CassandraAttributes/SpeculativeExecutionAttributes/NestedSpanAttributes/count``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/cassandra/consistency/level``
            - ``OTelAttribute/cassandra/coordinator/dc``
            - ``OTelAttribute/cassandra/coordinator/id``
            - ``OTelAttribute/cassandra/page/size``
            - ``OTelAttribute/cassandra/query/idempotent``
            - ``OTelAttribute/cassandra/speculativeExecution/count``
        }
    }
}

## CI/CD Pipeline Attributes

This group describes attributes specific to pipelines within a Continuous Integration and Continuous Deployment (CI/CD) system. A [pipeline](https://wikipedia.org/wiki/Pipeline_(computing)) in this case is a series of steps that are performed in order to deliver a new version of software. This aligns with the [Britannica](https://www.britannica.com/dictionary/pipeline) definition of a pipeline where a **pipeline** is the system for developing and producing something. In the context of CI/CD, a pipeline produces or delivers software.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/ActionAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/NestedSpanAttributes/result``
            - ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/RunAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/RunAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/RunAttributes/UrlAttributes/NestedSpanAttributes/full``
            - ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/TaskAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/TaskAttributes/RunAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/TaskAttributes/RunAttributes/NestedSpanAttributes/result``
            - ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/TaskAttributes/RunAttributes/UrlAttributes/NestedSpanAttributes/full``
            - ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/TaskAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/CicdAttributes/SystemAttributes/NestedSpanAttributes/component``
            - ``Tracing/SpanAttributes/CicdAttributes/WorkerAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/CicdAttributes/WorkerAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/CicdAttributes/WorkerAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/CicdAttributes/WorkerAttributes/UrlAttributes/NestedSpanAttributes/full``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/cicd/pipeline/action/name``
            - ``OTelAttribute/cicd/pipeline/name``
            - ``OTelAttribute/cicd/pipeline/result``
            - ``OTelAttribute/cicd/pipeline/run/id``
            - ``OTelAttribute/cicd/pipeline/run/state``
            - ``OTelAttribute/cicd/pipeline/run/url/full``
            - ``OTelAttribute/cicd/pipeline/task/name``
            - ``OTelAttribute/cicd/pipeline/task/run/id``
            - ``OTelAttribute/cicd/pipeline/task/run/result``
            - ``OTelAttribute/cicd/pipeline/task/run/url/full``
            - ``OTelAttribute/cicd/pipeline/task/type``
            - ``OTelAttribute/cicd/system/component``
            - ``OTelAttribute/cicd/worker/id``
            - ``OTelAttribute/cicd/worker/name``
            - ``OTelAttribute/cicd/worker/state``
            - ``OTelAttribute/cicd/worker/url/full``
        }
    }
}

## Client Attributes

These attributes may be used to describe the client in a connection-based network interaction where there is one side that initiates the connection (the client is the side that initiates the connection). This covers all TCP network interactions since TCP is connection-based and one side initiates the connection (an exception is made for peer-to-peer communication over TCP where the "user-facing" surface of the protocol / API doesn't expose a clear notion of client and server). This also covers UDP network interactions where one side initiates the interaction, e.g. QUIC (HTTP/3) and DNS.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ClientAttributes/NestedSpanAttributes/address``
            - ``Tracing/SpanAttributes/ClientAttributes/NestedSpanAttributes/port``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/client/address``
            - ``OTelAttribute/client/port``
        }
    }
}

## Cloud Attributes

A cloud environment (e.g. GCP, Azure, AWS).

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/CloudAttributes/AccountAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/CloudAttributes/NestedSpanAttributes/availabilityZone``
            - ``Tracing/SpanAttributes/CloudAttributes/NestedSpanAttributes/platform``
            - ``Tracing/SpanAttributes/CloudAttributes/NestedSpanAttributes/provider``
            - ``Tracing/SpanAttributes/CloudAttributes/NestedSpanAttributes/region``
            - ``Tracing/SpanAttributes/CloudAttributes/NestedSpanAttributes/resourceId``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/cloud/account/id``
            - ``OTelAttribute/cloud/availabilityZone``
            - ``OTelAttribute/cloud/platform``
            - ``OTelAttribute/cloud/provider``
            - ``OTelAttribute/cloud/region``
            - ``OTelAttribute/cloud/resourceId``
        }
    }
}

## CloudEvents Attributes

This document defines attributes for CloudEvents.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/CloudeventsAttributes/NestedSpanAttributes/eventId``
            - ``Tracing/SpanAttributes/CloudeventsAttributes/NestedSpanAttributes/eventSource``
            - ``Tracing/SpanAttributes/CloudeventsAttributes/NestedSpanAttributes/eventSpecVersion``
            - ``Tracing/SpanAttributes/CloudeventsAttributes/NestedSpanAttributes/eventSubject``
            - ``Tracing/SpanAttributes/CloudeventsAttributes/NestedSpanAttributes/eventType``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/cloudevents/eventId``
            - ``OTelAttribute/cloudevents/eventSource``
            - ``OTelAttribute/cloudevents/eventSpecVersion``
            - ``OTelAttribute/cloudevents/eventSubject``
            - ``OTelAttribute/cloudevents/eventType``
        }
    }
}

## CloudFoundry Attributes

CloudFoundry resource attributes.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/CloudfoundryAttributes/AppAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/CloudfoundryAttributes/AppAttributes/InstanceAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/CloudfoundryAttributes/AppAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/CloudfoundryAttributes/OrgAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/CloudfoundryAttributes/OrgAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/CloudfoundryAttributes/ProcessAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/CloudfoundryAttributes/ProcessAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/CloudfoundryAttributes/SpaceAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/CloudfoundryAttributes/SpaceAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/CloudfoundryAttributes/SystemAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/CloudfoundryAttributes/SystemAttributes/InstanceAttributes/NestedSpanAttributes/id``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/cloudfoundry/app/id``
            - ``OTelAttribute/cloudfoundry/app/instance/id``
            - ``OTelAttribute/cloudfoundry/app/name``
            - ``OTelAttribute/cloudfoundry/org/id``
            - ``OTelAttribute/cloudfoundry/org/name``
            - ``OTelAttribute/cloudfoundry/process/id``
            - ``OTelAttribute/cloudfoundry/process/type``
            - ``OTelAttribute/cloudfoundry/space/id``
            - ``OTelAttribute/cloudfoundry/space/name``
            - ``OTelAttribute/cloudfoundry/system/id``
            - ``OTelAttribute/cloudfoundry/system/instance/id``
        }
    }
}

## Code Attributes

These attributes provide context about source code

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/CodeAttributes/ColumnAttributes/NestedSpanAttributes/number``
            - ``Tracing/SpanAttributes/CodeAttributes/FileAttributes/NestedSpanAttributes/path``
            - ``Tracing/SpanAttributes/CodeAttributes/FunctionAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/CodeAttributes/LineAttributes/NestedSpanAttributes/number``
            - ``Tracing/SpanAttributes/CodeAttributes/NestedSpanAttributes/stacktrace``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/code/column/number``
            - ``OTelAttribute/code/file/path``
            - ``OTelAttribute/code/function/name``
            - ``OTelAttribute/code/line/number``
            - ``OTelAttribute/code/stacktrace``
        }
    }
}

## Deprecated Code Attributes

These deprecated attributes provide context about source code

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/CodeAttributes/NestedSpanAttributes/_column``
            - ``Tracing/SpanAttributes/CodeAttributes/NestedSpanAttributes/filepath``
            - ``Tracing/SpanAttributes/CodeAttributes/NestedSpanAttributes/_function``
            - ``Tracing/SpanAttributes/CodeAttributes/NestedSpanAttributes/lineno``
            - ``Tracing/SpanAttributes/CodeAttributes/NestedSpanAttributes/namespace``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/code/_column``
            - ``OTelAttribute/code/filepath``
            - ``OTelAttribute/code/_function``
            - ``OTelAttribute/code/lineno``
            - ``OTelAttribute/code/namespace``
        }
    }
}

## Container Attributes

A container instance.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ContainerAttributes/NestedSpanAttributes/command``
            - ``Tracing/SpanAttributes/ContainerAttributes/NestedSpanAttributes/commandArgs``
            - ``Tracing/SpanAttributes/ContainerAttributes/NestedSpanAttributes/commandLine``
            - ``Tracing/SpanAttributes/ContainerAttributes/CsiAttributes/PluginAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/ContainerAttributes/CsiAttributes/VolumeAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/ContainerAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/ContainerAttributes/ImageAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/ContainerAttributes/ImageAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/ContainerAttributes/ImageAttributes/NestedSpanAttributes/repoDigests``
            - ``Tracing/SpanAttributes/ContainerAttributes/ImageAttributes/NestedSpanAttributes/tags``
            - ``Tracing/SpanAttributes/ContainerAttributes/label``
            - ``Tracing/SpanAttributes/ContainerAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/ContainerAttributes/RuntimeAttributes/NestedSpanAttributes/description``
            - ``Tracing/SpanAttributes/ContainerAttributes/RuntimeAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/ContainerAttributes/RuntimeAttributes/NestedSpanAttributes/version``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/container/command``
            - ``OTelAttribute/container/commandArgs``
            - ``OTelAttribute/container/commandLine``
            - ``OTelAttribute/container/csi/plugin/name``
            - ``OTelAttribute/container/csi/volume/id``
            - ``OTelAttribute/container/id``
            - ``OTelAttribute/container/image/id``
            - ``OTelAttribute/container/image/name``
            - ``OTelAttribute/container/image/repoDigests``
            - ``OTelAttribute/container/image/tags``
            - ``OTelAttribute/container/label``
            - ``OTelAttribute/container/name``
            - ``OTelAttribute/container/runtime/description``
            - ``OTelAttribute/container/runtime/name``
            - ``OTelAttribute/container/runtime/version``
        }
    }
}

## Deprecated Container Attributes

Describes deprecated container attributes.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ContainerAttributes/CpuAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/ContainerAttributes/labels``
            - ``Tracing/SpanAttributes/ContainerAttributes/NestedSpanAttributes/_runtime``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/container/cpu/state``
            - ``OTelAttribute/container/labels``
            - ``OTelAttribute/container/_runtime``
        }
    }
}

## CPU Attributes

Attributes specific to a cpu instance.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/CpuAttributes/NestedSpanAttributes/logicalNumber``
            - ``Tracing/SpanAttributes/CpuAttributes/NestedSpanAttributes/mode``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/cpu/logicalNumber``
            - ``OTelAttribute/cpu/mode``
        }
    }
}

## CPython attributes

This document defines CPython related attributes.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/CpythonAttributes/GcAttributes/NestedSpanAttributes/generation``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/cpython/gc/generation``
        }
    }
}

## General Database Attributes

This group defines the attributes used to describe telemetry in the context of databases.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/DbAttributes/ClientAttributes/ConnectionAttributes/PoolAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/DbAttributes/ClientAttributes/ConnectionAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/DbAttributes/CollectionAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/DbAttributes/NestedSpanAttributes/namespace``
            - ``Tracing/SpanAttributes/DbAttributes/OperationAttributes/BatchAttributes/NestedSpanAttributes/size``
            - ``Tracing/SpanAttributes/DbAttributes/OperationAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/DbAttributes/OperationAttributes/parameter``
            - ``Tracing/SpanAttributes/DbAttributes/QueryAttributes/parameter``
            - ``Tracing/SpanAttributes/DbAttributes/QueryAttributes/NestedSpanAttributes/summary``
            - ``Tracing/SpanAttributes/DbAttributes/QueryAttributes/NestedSpanAttributes/text``
            - ``Tracing/SpanAttributes/DbAttributes/ResponseAttributes/NestedSpanAttributes/returnedRows``
            - ``Tracing/SpanAttributes/DbAttributes/ResponseAttributes/NestedSpanAttributes/statusCode``
            - ``Tracing/SpanAttributes/DbAttributes/StoredProcedureAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/DbAttributes/SystemAttributes/NestedSpanAttributes/name``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/db/client/connection/pool/name``
            - ``OTelAttribute/db/client/connection/state``
            - ``OTelAttribute/db/collection/name``
            - ``OTelAttribute/db/namespace``
            - ``OTelAttribute/db/operation/batch/size``
            - ``OTelAttribute/db/operation/name``
            - ``OTelAttribute/db/operation/parameter``
            - ``OTelAttribute/db/query/parameter``
            - ``OTelAttribute/db/query/summary``
            - ``OTelAttribute/db/query/text``
            - ``OTelAttribute/db/response/returnedRows``
            - ``OTelAttribute/db/response/statusCode``
            - ``OTelAttribute/db/storedProcedure/name``
            - ``OTelAttribute/db/system/name``
        }
    }
}

## Deprecated Database Attributes

Describes deprecated database attributes.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/DbAttributes/CassandraAttributes/NestedSpanAttributes/consistencyLevel``
            - ``Tracing/SpanAttributes/DbAttributes/CassandraAttributes/CoordinatorAttributes/NestedSpanAttributes/dc``
            - ``Tracing/SpanAttributes/DbAttributes/CassandraAttributes/CoordinatorAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/DbAttributes/CassandraAttributes/NestedSpanAttributes/idempotence``
            - ``Tracing/SpanAttributes/DbAttributes/CassandraAttributes/NestedSpanAttributes/pageSize``
            - ``Tracing/SpanAttributes/DbAttributes/CassandraAttributes/NestedSpanAttributes/speculativeExecutionCount``
            - ``Tracing/SpanAttributes/DbAttributes/CassandraAttributes/NestedSpanAttributes/table``
            - ``Tracing/SpanAttributes/DbAttributes/NestedSpanAttributes/connectionString``
            - ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/clientId``
            - ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/connectionMode``
            - ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/consistencyLevel``
            - ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/container``
            - ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/operationType``
            - ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/regionsContacted``
            - ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/requestCharge``
            - ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/requestContentLength``
            - ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/statusCode``
            - ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/subStatusCode``
            - ``Tracing/SpanAttributes/DbAttributes/ElasticsearchAttributes/ClusterAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/DbAttributes/ElasticsearchAttributes/NodeAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/DbAttributes/ElasticsearchAttributes/pathParts``
            - ``Tracing/SpanAttributes/DbAttributes/InstanceAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/DbAttributes/JdbcAttributes/NestedSpanAttributes/driverClassname``
            - ``Tracing/SpanAttributes/DbAttributes/MongodbAttributes/NestedSpanAttributes/collection``
            - ``Tracing/SpanAttributes/DbAttributes/MssqlAttributes/NestedSpanAttributes/instanceName``
            - ``Tracing/SpanAttributes/DbAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/DbAttributes/NestedSpanAttributes/_operation``
            - ``Tracing/SpanAttributes/DbAttributes/RedisAttributes/NestedSpanAttributes/databaseIndex``
            - ``Tracing/SpanAttributes/DbAttributes/SqlAttributes/NestedSpanAttributes/table``
            - ``Tracing/SpanAttributes/DbAttributes/NestedSpanAttributes/statement``
            - ``Tracing/SpanAttributes/DbAttributes/NestedSpanAttributes/_system``
            - ``Tracing/SpanAttributes/DbAttributes/NestedSpanAttributes/user``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/db/cassandra/consistencyLevel``
            - ``OTelAttribute/db/cassandra/coordinator/dc``
            - ``OTelAttribute/db/cassandra/coordinator/id``
            - ``OTelAttribute/db/cassandra/idempotence``
            - ``OTelAttribute/db/cassandra/pageSize``
            - ``OTelAttribute/db/cassandra/speculativeExecutionCount``
            - ``OTelAttribute/db/cassandra/table``
            - ``OTelAttribute/db/connectionString``
            - ``OTelAttribute/db/cosmosdb/clientId``
            - ``OTelAttribute/db/cosmosdb/connectionMode``
            - ``OTelAttribute/db/cosmosdb/consistencyLevel``
            - ``OTelAttribute/db/cosmosdb/container``
            - ``OTelAttribute/db/cosmosdb/operationType``
            - ``OTelAttribute/db/cosmosdb/regionsContacted``
            - ``OTelAttribute/db/cosmosdb/requestCharge``
            - ``OTelAttribute/db/cosmosdb/requestContentLength``
            - ``OTelAttribute/db/cosmosdb/statusCode``
            - ``OTelAttribute/db/cosmosdb/subStatusCode``
            - ``OTelAttribute/db/elasticsearch/cluster/name``
            - ``OTelAttribute/db/elasticsearch/node/name``
            - ``OTelAttribute/db/elasticsearch/pathParts``
            - ``OTelAttribute/db/instance/id``
            - ``OTelAttribute/db/jdbc/driverClassname``
            - ``OTelAttribute/db/mongodb/collection``
            - ``OTelAttribute/db/mssql/instanceName``
            - ``OTelAttribute/db/name``
            - ``OTelAttribute/db/_operation``
            - ``OTelAttribute/db/redis/databaseIndex``
            - ``OTelAttribute/db/sql/table``
            - ``OTelAttribute/db/statement``
            - ``OTelAttribute/db/_system``
            - ``OTelAttribute/db/user``
        }
    }
}

## Deprecated Database Metrics

Describes deprecated db metrics attributes.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/DbAttributes/ClientAttributes/ConnectionsAttributes/PoolAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/DbAttributes/ClientAttributes/ConnectionsAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/PoolAttributes/NestedSpanAttributes/name``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/db/client/connections/pool/name``
            - ``OTelAttribute/db/client/connections/state``
            - ``OTelAttribute/pool/name``
        }
    }
}

## Deployment Attributes

This document defines attributes for software deployments.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/DeploymentAttributes/EnvironmentAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/DeploymentAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/DeploymentAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/DeploymentAttributes/NestedSpanAttributes/status``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/deployment/environment/name``
            - ``OTelAttribute/deployment/id``
            - ``OTelAttribute/deployment/name``
            - ``OTelAttribute/deployment/status``
        }
    }
}

## registry.deployment.deprecated

Describes deprecated deployment attributes.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/DeploymentAttributes/NestedSpanAttributes/_environment``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/deployment/_environment``
        }
    }
}

## Destination Attributes

These attributes may be used to describe the receiver of a network exchange/packet. These should be used when there is no client/server relationship between the two sides, or when that relationship is unknown. This covers low-level network interactions (e.g. packet tracing) where you don't know if there was a connection or which side initiated it. This also covers unidirectional UDP flows and peer-to-peer communication where the "user-facing" surface of the protocol / API doesn't expose a clear notion of client and server.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/DestinationAttributes/NestedSpanAttributes/address``
            - ``Tracing/SpanAttributes/DestinationAttributes/NestedSpanAttributes/port``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/destination/address``
            - ``OTelAttribute/destination/port``
        }
    }
}

## Device Attributes

Describes device attributes.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/DeviceAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/DeviceAttributes/NestedSpanAttributes/manufacturer``
            - ``Tracing/SpanAttributes/DeviceAttributes/ModelAttributes/NestedSpanAttributes/identifier``
            - ``Tracing/SpanAttributes/DeviceAttributes/ModelAttributes/NestedSpanAttributes/name``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/device/id``
            - ``OTelAttribute/device/manufacturer``
            - ``OTelAttribute/device/model/identifier``
            - ``OTelAttribute/device/model/name``
        }
    }
}

## Disk Attributes

These attributes may be used for any disk related operation.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/DiskAttributes/IoAttributes/NestedSpanAttributes/direction``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/disk/io/direction``
        }
    }
}

## DNS Attributes

This document defines the shared attributes used to report a DNS query.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/DnsAttributes/NestedSpanAttributes/answers``
            - ``Tracing/SpanAttributes/DnsAttributes/QuestionAttributes/NestedSpanAttributes/name``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/dns/answers``
            - ``OTelAttribute/dns/question/name``
        }
    }
}

## Elasticsearch Attributes

This section defines attributes for Elasticsearch.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ElasticsearchAttributes/NodeAttributes/NestedSpanAttributes/name``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/elasticsearch/node/name``
        }
    }
}

## End User Attributes

Describes the end user.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/EnduserAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/EnduserAttributes/PseudoAttributes/NestedSpanAttributes/id``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/enduser/id``
            - ``OTelAttribute/enduser/pseudo/id``
        }
    }
}

## Deprecated End User Attributes

Describes deprecated enduser attributes.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/EnduserAttributes/NestedSpanAttributes/role``
            - ``Tracing/SpanAttributes/EnduserAttributes/NestedSpanAttributes/scope``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/enduser/role``
            - ``OTelAttribute/enduser/scope``
        }
    }
}

## Error Attributes

This document defines the shared attributes used to report an error.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ErrorAttributes/NestedSpanAttributes/message``
            - ``Tracing/SpanAttributes/ErrorAttributes/NestedSpanAttributes/type``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/error/message``
            - ``OTelAttribute/error/type``
        }
    }
}

## Event Attributes

Attributes for Events represented using Log Records.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/EventAttributes/NestedSpanAttributes/name``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/event/name``
        }
    }
}

## Exception Attributes

This document defines the shared attributes used to report a single exception associated with a span or log.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ExceptionAttributes/NestedSpanAttributes/message``
            - ``Tracing/SpanAttributes/ExceptionAttributes/NestedSpanAttributes/stacktrace``
            - ``Tracing/SpanAttributes/ExceptionAttributes/NestedSpanAttributes/type``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/exception/message``
            - ``OTelAttribute/exception/stacktrace``
            - ``OTelAttribute/exception/type``
        }
    }
}

## Deprecated Exception Attributes

Deprecated exception attributes.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ExceptionAttributes/NestedSpanAttributes/escaped``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/exception/escaped``
        }
    }
}

## Function as a Service Attributes

FaaS attributes
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/coldstart``
            - ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/cron``
            - ``Tracing/SpanAttributes/FaasAttributes/DocumentAttributes/NestedSpanAttributes/collection``
            - ``Tracing/SpanAttributes/FaasAttributes/DocumentAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/FaasAttributes/DocumentAttributes/NestedSpanAttributes/operation``
            - ``Tracing/SpanAttributes/FaasAttributes/DocumentAttributes/NestedSpanAttributes/time``
            - ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/instance``
            - ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/invocationId``
            - ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/invokedName``
            - ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/invokedProvider``
            - ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/invokedRegion``
            - ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/maxMemory``
            - ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/time``
            - ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/trigger``
            - ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/version``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/faas/coldstart``
            - ``OTelAttribute/faas/cron``
            - ``OTelAttribute/faas/document/collection``
            - ``OTelAttribute/faas/document/name``
            - ``OTelAttribute/faas/document/operation``
            - ``OTelAttribute/faas/document/time``
            - ``OTelAttribute/faas/instance``
            - ``OTelAttribute/faas/invocationId``
            - ``OTelAttribute/faas/invokedName``
            - ``OTelAttribute/faas/invokedProvider``
            - ``OTelAttribute/faas/invokedRegion``
            - ``OTelAttribute/faas/maxMemory``
            - ``OTelAttribute/faas/name``
            - ``OTelAttribute/faas/time``
            - ``OTelAttribute/faas/trigger``
            - ``OTelAttribute/faas/version``
        }
    }
}

## Feature Flag Attributes

This document defines attributes for Feature Flags.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/FeatureFlagAttributes/ContextAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/FeatureFlagAttributes/NestedSpanAttributes/key``
            - ``Tracing/SpanAttributes/FeatureFlagAttributes/ProviderAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/FeatureFlagAttributes/ResultAttributes/NestedSpanAttributes/reason``
            - ``Tracing/SpanAttributes/FeatureFlagAttributes/ResultAttributes/NestedSpanAttributes/value``
            - ``Tracing/SpanAttributes/FeatureFlagAttributes/ResultAttributes/NestedSpanAttributes/variant``
            - ``Tracing/SpanAttributes/FeatureFlagAttributes/SetAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/FeatureFlagAttributes/NestedSpanAttributes/version``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/featureFlag/context/id``
            - ``OTelAttribute/featureFlag/key``
            - ``OTelAttribute/featureFlag/provider/name``
            - ``OTelAttribute/featureFlag/result/reason``
            - ``OTelAttribute/featureFlag/result/value``
            - ``OTelAttribute/featureFlag/result/variant``
            - ``OTelAttribute/featureFlag/set/id``
            - ``OTelAttribute/featureFlag/version``
        }
    }
}

## Deprecated Feature Flag Attributes

Describes deprecated feature flag attributes.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/FeatureFlagAttributes/EvaluationAttributes/ErrorAttributes/NestedSpanAttributes/message``
            - ``Tracing/SpanAttributes/FeatureFlagAttributes/EvaluationAttributes/NestedSpanAttributes/reason``
            - ``Tracing/SpanAttributes/FeatureFlagAttributes/NestedSpanAttributes/providerName``
            - ``Tracing/SpanAttributes/FeatureFlagAttributes/NestedSpanAttributes/variant``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/featureFlag/evaluation/error/message``
            - ``OTelAttribute/featureFlag/evaluation/reason``
            - ``OTelAttribute/featureFlag/providerName``
            - ``OTelAttribute/featureFlag/variant``
        }
    }
}

## File Attributes

Describes file attributes.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/accessed``
            - ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/attributes``
            - ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/changed``
            - ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/created``
            - ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/directory``
            - ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/extension``
            - ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/forkName``
            - ``Tracing/SpanAttributes/FileAttributes/GroupAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/FileAttributes/GroupAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/inode``
            - ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/mode``
            - ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/modified``
            - ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/FileAttributes/OwnerAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/FileAttributes/OwnerAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/path``
            - ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/size``
            - ``Tracing/SpanAttributes/FileAttributes/SymbolicLinkAttributes/NestedSpanAttributes/targetPath``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/file/accessed``
            - ``OTelAttribute/file/attributes``
            - ``OTelAttribute/file/changed``
            - ``OTelAttribute/file/created``
            - ``OTelAttribute/file/directory``
            - ``OTelAttribute/file/extension``
            - ``OTelAttribute/file/forkName``
            - ``OTelAttribute/file/group/id``
            - ``OTelAttribute/file/group/name``
            - ``OTelAttribute/file/inode``
            - ``OTelAttribute/file/mode``
            - ``OTelAttribute/file/modified``
            - ``OTelAttribute/file/name``
            - ``OTelAttribute/file/owner/id``
            - ``OTelAttribute/file/owner/name``
            - ``OTelAttribute/file/path``
            - ``OTelAttribute/file/size``
            - ``OTelAttribute/file/symbolicLink/targetPath``
        }
    }
}

## GCP - AppHub Attributes

This document defines attributes AppHub will apply to resources in GCP. See [AppHub overview](https://cloud.google.com/app-hub/docs/overview).

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/ApplicationAttributes/NestedSpanAttributes/container``
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/ApplicationAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/ApplicationAttributes/NestedSpanAttributes/location``
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/ServiceAttributes/NestedSpanAttributes/criticalityType``
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/ServiceAttributes/NestedSpanAttributes/environmentType``
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/ServiceAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/WorkloadAttributes/NestedSpanAttributes/criticalityType``
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/WorkloadAttributes/NestedSpanAttributes/environmentType``
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/WorkloadAttributes/NestedSpanAttributes/id``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/gcp/apphub/application/container``
            - ``OTelAttribute/gcp/apphub/application/id``
            - ``OTelAttribute/gcp/apphub/application/location``
            - ``OTelAttribute/gcp/apphub/service/criticalityType``
            - ``OTelAttribute/gcp/apphub/service/environmentType``
            - ``OTelAttribute/gcp/apphub/service/id``
            - ``OTelAttribute/gcp/apphub/workload/criticalityType``
            - ``OTelAttribute/gcp/apphub/workload/environmentType``
            - ``OTelAttribute/gcp/apphub/workload/id``
        }
    }
}

## GCP - AppHub Destination Attributes

This document defines attributes AppHub will apply to destination resources in GCP. See [AppHub overview](https://cloud.google.com/app-hub/docs/overview).

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/ApplicationAttributes/NestedSpanAttributes/container``
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/ApplicationAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/ApplicationAttributes/NestedSpanAttributes/location``
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/ServiceAttributes/NestedSpanAttributes/criticalityType``
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/ServiceAttributes/NestedSpanAttributes/environmentType``
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/ServiceAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/WorkloadAttributes/NestedSpanAttributes/criticalityType``
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/WorkloadAttributes/NestedSpanAttributes/environmentType``
            - ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/WorkloadAttributes/NestedSpanAttributes/id``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/gcp/apphubDestination/application/container``
            - ``OTelAttribute/gcp/apphubDestination/application/id``
            - ``OTelAttribute/gcp/apphubDestination/application/location``
            - ``OTelAttribute/gcp/apphubDestination/service/criticalityType``
            - ``OTelAttribute/gcp/apphubDestination/service/environmentType``
            - ``OTelAttribute/gcp/apphubDestination/service/id``
            - ``OTelAttribute/gcp/apphubDestination/workload/criticalityType``
            - ``OTelAttribute/gcp/apphubDestination/workload/environmentType``
            - ``OTelAttribute/gcp/apphubDestination/workload/id``
        }
    }
}

## GCP Client Attributes

Attributes for Google Cloud client libraries.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/GcpAttributes/ClientAttributes/NestedSpanAttributes/service``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/gcp/client/service``
        }
    }
}

## GCP - Google Cloud Run Attributes

This document defines attributes for Google Cloud Run.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/GcpAttributes/CloudRunAttributes/JobAttributes/NestedSpanAttributes/execution``
            - ``Tracing/SpanAttributes/GcpAttributes/CloudRunAttributes/JobAttributes/NestedSpanAttributes/taskIndex``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/gcp/cloudRun/job/execution``
            - ``OTelAttribute/gcp/cloudRun/job/taskIndex``
        }
    }
}

## GCP - Google Compute Engine (GCE) Attributes

This document defines attributes for Google Compute Engine (GCE).

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/GcpAttributes/GceAttributes/InstanceAttributes/NestedSpanAttributes/hostname``
            - ``Tracing/SpanAttributes/GcpAttributes/GceAttributes/InstanceAttributes/NestedSpanAttributes/name``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/gcp/gce/instance/hostname``
            - ``OTelAttribute/gcp/gce/instance/name``
        }
    }
}

## GenAI Attributes

This document defines the attributes used to describe telemetry in the context of Generative Artificial Intelligence (GenAI) Models requests and responses.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/GenAiAttributes/AgentAttributes/NestedSpanAttributes/description``
            - ``Tracing/SpanAttributes/GenAiAttributes/AgentAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/GenAiAttributes/AgentAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/GenAiAttributes/ConversationAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/GenAiAttributes/DataSourceAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/GenAiAttributes/EmbeddingsAttributes/DimensionAttributes/NestedSpanAttributes/count``
            - ``Tracing/SpanAttributes/GenAiAttributes/EvaluationAttributes/NestedSpanAttributes/explanation``
            - ``Tracing/SpanAttributes/GenAiAttributes/EvaluationAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/GenAiAttributes/EvaluationAttributes/ScoreAttributes/NestedSpanAttributes/label``
            - ``Tracing/SpanAttributes/GenAiAttributes/EvaluationAttributes/ScoreAttributes/NestedSpanAttributes/value``
            - ``Tracing/SpanAttributes/GenAiAttributes/InputAttributes/NestedSpanAttributes/messages``
            - ``Tracing/SpanAttributes/GenAiAttributes/OperationAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/GenAiAttributes/OutputAttributes/NestedSpanAttributes/messages``
            - ``Tracing/SpanAttributes/GenAiAttributes/OutputAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/GenAiAttributes/ProviderAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/ChoiceAttributes/NestedSpanAttributes/count``
            - ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/encodingFormats``
            - ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/frequencyPenalty``
            - ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/maxTokens``
            - ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/model``
            - ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/presencePenalty``
            - ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/seed``
            - ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/stopSequences``
            - ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/temperature``
            - ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/topK``
            - ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/topP``
            - ``Tracing/SpanAttributes/GenAiAttributes/ResponseAttributes/NestedSpanAttributes/finishReasons``
            - ``Tracing/SpanAttributes/GenAiAttributes/ResponseAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/GenAiAttributes/ResponseAttributes/NestedSpanAttributes/model``
            - ``Tracing/SpanAttributes/GenAiAttributes/NestedSpanAttributes/systemInstructions``
            - ``Tracing/SpanAttributes/GenAiAttributes/TokenAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/GenAiAttributes/ToolAttributes/CallAttributes/NestedSpanAttributes/arguments``
            - ``Tracing/SpanAttributes/GenAiAttributes/ToolAttributes/CallAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/GenAiAttributes/ToolAttributes/CallAttributes/NestedSpanAttributes/result``
            - ``Tracing/SpanAttributes/GenAiAttributes/ToolAttributes/NestedSpanAttributes/definitions``
            - ``Tracing/SpanAttributes/GenAiAttributes/ToolAttributes/NestedSpanAttributes/description``
            - ``Tracing/SpanAttributes/GenAiAttributes/ToolAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/GenAiAttributes/ToolAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/GenAiAttributes/UsageAttributes/NestedSpanAttributes/inputTokens``
            - ``Tracing/SpanAttributes/GenAiAttributes/UsageAttributes/NestedSpanAttributes/outputTokens``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/genAi/agent/description``
            - ``OTelAttribute/genAi/agent/id``
            - ``OTelAttribute/genAi/agent/name``
            - ``OTelAttribute/genAi/conversation/id``
            - ``OTelAttribute/genAi/dataSource/id``
            - ``OTelAttribute/genAi/embeddings/dimension/count``
            - ``OTelAttribute/genAi/evaluation/explanation``
            - ``OTelAttribute/genAi/evaluation/name``
            - ``OTelAttribute/genAi/evaluation/score/label``
            - ``OTelAttribute/genAi/evaluation/score/value``
            - ``OTelAttribute/genAi/input/messages``
            - ``OTelAttribute/genAi/operation/name``
            - ``OTelAttribute/genAi/output/messages``
            - ``OTelAttribute/genAi/output/type``
            - ``OTelAttribute/genAi/provider/name``
            - ``OTelAttribute/genAi/request/choice/count``
            - ``OTelAttribute/genAi/request/encodingFormats``
            - ``OTelAttribute/genAi/request/frequencyPenalty``
            - ``OTelAttribute/genAi/request/maxTokens``
            - ``OTelAttribute/genAi/request/model``
            - ``OTelAttribute/genAi/request/presencePenalty``
            - ``OTelAttribute/genAi/request/seed``
            - ``OTelAttribute/genAi/request/stopSequences``
            - ``OTelAttribute/genAi/request/temperature``
            - ``OTelAttribute/genAi/request/topK``
            - ``OTelAttribute/genAi/request/topP``
            - ``OTelAttribute/genAi/response/finishReasons``
            - ``OTelAttribute/genAi/response/id``
            - ``OTelAttribute/genAi/response/model``
            - ``OTelAttribute/genAi/systemInstructions``
            - ``OTelAttribute/genAi/token/type``
            - ``OTelAttribute/genAi/tool/call/arguments``
            - ``OTelAttribute/genAi/tool/call/id``
            - ``OTelAttribute/genAi/tool/call/result``
            - ``OTelAttribute/genAi/tool/definitions``
            - ``OTelAttribute/genAi/tool/description``
            - ``OTelAttribute/genAi/tool/name``
            - ``OTelAttribute/genAi/tool/type``
            - ``OTelAttribute/genAi/usage/inputTokens``
            - ``OTelAttribute/genAi/usage/outputTokens``
        }
    }
}

## Deprecated GenAI Attributes

Describes deprecated `gen_ai` attributes.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/GenAiAttributes/NestedSpanAttributes/completion``
            - ``Tracing/SpanAttributes/GenAiAttributes/NestedSpanAttributes/prompt``
            - ``Tracing/SpanAttributes/GenAiAttributes/NestedSpanAttributes/system``
            - ``Tracing/SpanAttributes/GenAiAttributes/UsageAttributes/NestedSpanAttributes/completionTokens``
            - ``Tracing/SpanAttributes/GenAiAttributes/UsageAttributes/NestedSpanAttributes/promptTokens``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/genAi/completion``
            - ``OTelAttribute/genAi/prompt``
            - ``OTelAttribute/genAi/system``
            - ``OTelAttribute/genAi/usage/completionTokens``
            - ``OTelAttribute/genAi/usage/promptTokens``
        }
    }
}

## Deprecated OpenAI GenAI Attributes

Describes deprecated `gen_ai.openai` attributes.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/GenAiAttributes/OpenaiAttributes/RequestAttributes/NestedSpanAttributes/responseFormat``
            - ``Tracing/SpanAttributes/GenAiAttributes/OpenaiAttributes/RequestAttributes/NestedSpanAttributes/seed``
            - ``Tracing/SpanAttributes/GenAiAttributes/OpenaiAttributes/RequestAttributes/NestedSpanAttributes/serviceTier``
            - ``Tracing/SpanAttributes/GenAiAttributes/OpenaiAttributes/ResponseAttributes/NestedSpanAttributes/serviceTier``
            - ``Tracing/SpanAttributes/GenAiAttributes/OpenaiAttributes/ResponseAttributes/NestedSpanAttributes/systemFingerprint``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/genAi/openai/request/responseFormat``
            - ``OTelAttribute/genAi/openai/request/seed``
            - ``OTelAttribute/genAi/openai/request/serviceTier``
            - ``OTelAttribute/genAi/openai/response/serviceTier``
            - ``OTelAttribute/genAi/openai/response/systemFingerprint``
        }
    }
}

## registry.geo

Geo fields can carry data about a specific location related to an event. This geolocation information can be derived from techniques such as Geo IP, or be user-supplied.
Note: Geo attributes are typically used under another namespace, such as client.* and describe the location of the corresponding entity (device, end-user, etc). Semantic conventions that reference geo attributes (as a root namespace) or embed them (under their own namespace) SHOULD document what geo attributes describe in the scope of that convention.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/GeoAttributes/ContinentAttributes/NestedSpanAttributes/code``
            - ``Tracing/SpanAttributes/GeoAttributes/CountryAttributes/NestedSpanAttributes/isoCode``
            - ``Tracing/SpanAttributes/GeoAttributes/LocalityAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/GeoAttributes/LocationAttributes/NestedSpanAttributes/lat``
            - ``Tracing/SpanAttributes/GeoAttributes/LocationAttributes/NestedSpanAttributes/lon``
            - ``Tracing/SpanAttributes/GeoAttributes/NestedSpanAttributes/postalCode``
            - ``Tracing/SpanAttributes/GeoAttributes/RegionAttributes/NestedSpanAttributes/isoCode``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/geo/continent/code``
            - ``OTelAttribute/geo/country/isoCode``
            - ``OTelAttribute/geo/locality/name``
            - ``OTelAttribute/geo/location/lat``
            - ``OTelAttribute/geo/location/lon``
            - ``OTelAttribute/geo/postalCode``
            - ``OTelAttribute/geo/region/isoCode``
        }
    }
}

## Go Attributes

This document defines Go related attributes.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/GoAttributes/MemoryAttributes/NestedSpanAttributes/type``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/go/memory/type``
        }
    }
}

## GraphQL Attributes

This document defines attributes for GraphQL.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/GraphqlAttributes/NestedSpanAttributes/document``
            - ``Tracing/SpanAttributes/GraphqlAttributes/OperationAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/GraphqlAttributes/OperationAttributes/NestedSpanAttributes/type``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/graphql/document``
            - ``OTelAttribute/graphql/operation/name``
            - ``OTelAttribute/graphql/operation/type``
        }
    }
}

## Hardware Attributes

Attributes for hardware.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/HwAttributes/BatteryAttributes/NestedSpanAttributes/capacity``
            - ``Tracing/SpanAttributes/HwAttributes/BatteryAttributes/NestedSpanAttributes/chemistry``
            - ``Tracing/SpanAttributes/HwAttributes/BatteryAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/biosVersion``
            - ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/driverVersion``
            - ``Tracing/SpanAttributes/HwAttributes/EnclosureAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/firmwareVersion``
            - ``Tracing/SpanAttributes/HwAttributes/GpuAttributes/NestedSpanAttributes/task``
            - ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/limitType``
            - ``Tracing/SpanAttributes/HwAttributes/LogicalDiskAttributes/NestedSpanAttributes/raidLevel``
            - ``Tracing/SpanAttributes/HwAttributes/LogicalDiskAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/HwAttributes/MemoryAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/model``
            - ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/HwAttributes/NetworkAttributes/NestedSpanAttributes/logicalAddresses``
            - ``Tracing/SpanAttributes/HwAttributes/NetworkAttributes/NestedSpanAttributes/physicalAddress``
            - ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/parent``
            - ``Tracing/SpanAttributes/HwAttributes/PhysicalDiskAttributes/NestedSpanAttributes/smartAttribute``
            - ``Tracing/SpanAttributes/HwAttributes/PhysicalDiskAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/HwAttributes/PhysicalDiskAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/sensorLocation``
            - ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/serialNumber``
            - ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/HwAttributes/TapeDriveAttributes/NestedSpanAttributes/operationType``
            - ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/vendor``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/hw/battery/capacity``
            - ``OTelAttribute/hw/battery/chemistry``
            - ``OTelAttribute/hw/battery/state``
            - ``OTelAttribute/hw/biosVersion``
            - ``OTelAttribute/hw/driverVersion``
            - ``OTelAttribute/hw/enclosure/type``
            - ``OTelAttribute/hw/firmwareVersion``
            - ``OTelAttribute/hw/gpu/task``
            - ``OTelAttribute/hw/id``
            - ``OTelAttribute/hw/limitType``
            - ``OTelAttribute/hw/logicalDisk/raidLevel``
            - ``OTelAttribute/hw/logicalDisk/state``
            - ``OTelAttribute/hw/memory/type``
            - ``OTelAttribute/hw/model``
            - ``OTelAttribute/hw/name``
            - ``OTelAttribute/hw/network/logicalAddresses``
            - ``OTelAttribute/hw/network/physicalAddress``
            - ``OTelAttribute/hw/parent``
            - ``OTelAttribute/hw/physicalDisk/smartAttribute``
            - ``OTelAttribute/hw/physicalDisk/state``
            - ``OTelAttribute/hw/physicalDisk/type``
            - ``OTelAttribute/hw/sensorLocation``
            - ``OTelAttribute/hw/serialNumber``
            - ``OTelAttribute/hw/state``
            - ``OTelAttribute/hw/tapeDrive/operationType``
            - ``OTelAttribute/hw/type``
            - ``OTelAttribute/hw/vendor``
        }
    }
}

## Heroku Attributes

This document defines attributes for the Heroku platform on which application/s are running.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/HerokuAttributes/AppAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/HerokuAttributes/ReleaseAttributes/NestedSpanAttributes/commit``
            - ``Tracing/SpanAttributes/HerokuAttributes/ReleaseAttributes/NestedSpanAttributes/creationTimestamp``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/heroku/app/id``
            - ``OTelAttribute/heroku/release/commit``
            - ``OTelAttribute/heroku/release/creationTimestamp``
        }
    }
}

## Host Attributes

A host is defined as a computing instance. For example, physical servers, virtual machines, switches or disk array.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/HostAttributes/NestedSpanAttributes/arch``
            - ``Tracing/SpanAttributes/HostAttributes/CpuAttributes/CacheAttributes/L2Attributes/NestedSpanAttributes/size``
            - ``Tracing/SpanAttributes/HostAttributes/CpuAttributes/NestedSpanAttributes/family``
            - ``Tracing/SpanAttributes/HostAttributes/CpuAttributes/ModelAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/HostAttributes/CpuAttributes/ModelAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/HostAttributes/CpuAttributes/NestedSpanAttributes/stepping``
            - ``Tracing/SpanAttributes/HostAttributes/CpuAttributes/VendorAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/HostAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/HostAttributes/ImageAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/HostAttributes/ImageAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/HostAttributes/ImageAttributes/NestedSpanAttributes/version``
            - ``Tracing/SpanAttributes/HostAttributes/NestedSpanAttributes/ip``
            - ``Tracing/SpanAttributes/HostAttributes/NestedSpanAttributes/mac``
            - ``Tracing/SpanAttributes/HostAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/HostAttributes/NestedSpanAttributes/type``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/host/arch``
            - ``OTelAttribute/host/cpu/cache/l2/size``
            - ``OTelAttribute/host/cpu/family``
            - ``OTelAttribute/host/cpu/model/id``
            - ``OTelAttribute/host/cpu/model/name``
            - ``OTelAttribute/host/cpu/stepping``
            - ``OTelAttribute/host/cpu/vendor/id``
            - ``OTelAttribute/host/id``
            - ``OTelAttribute/host/image/id``
            - ``OTelAttribute/host/image/name``
            - ``OTelAttribute/host/image/version``
            - ``OTelAttribute/host/ip``
            - ``OTelAttribute/host/mac``
            - ``OTelAttribute/host/name``
            - ``OTelAttribute/host/type``
        }
    }
}

## HTTP Attributes

This document defines semantic convention attributes in the HTTP namespace.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/HttpAttributes/ConnectionAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/BodyAttributes/NestedSpanAttributes/size``
            - ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/header``
            - ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/NestedSpanAttributes/method``
            - ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/NestedSpanAttributes/methodOriginal``
            - ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/NestedSpanAttributes/resendCount``
            - ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/NestedSpanAttributes/size``
            - ``Tracing/SpanAttributes/HttpAttributes/ResponseAttributes/BodyAttributes/NestedSpanAttributes/size``
            - ``Tracing/SpanAttributes/HttpAttributes/ResponseAttributes/header``
            - ``Tracing/SpanAttributes/HttpAttributes/ResponseAttributes/NestedSpanAttributes/size``
            - ``Tracing/SpanAttributes/HttpAttributes/ResponseAttributes/NestedSpanAttributes/statusCode``
            - ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/route``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/http/connection/state``
            - ``OTelAttribute/http/request/body/size``
            - ``OTelAttribute/http/request/header``
            - ``OTelAttribute/http/request/method``
            - ``OTelAttribute/http/request/methodOriginal``
            - ``OTelAttribute/http/request/resendCount``
            - ``OTelAttribute/http/request/size``
            - ``OTelAttribute/http/response/body/size``
            - ``OTelAttribute/http/response/header``
            - ``OTelAttribute/http/response/size``
            - ``OTelAttribute/http/response/statusCode``
            - ``OTelAttribute/http/route``
        }
    }
}

## Deprecated HTTP Attributes

Describes deprecated HTTP attributes.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/clientIp``
            - ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/flavor``
            - ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/host``
            - ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/method``
            - ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/requestContentLength``
            - ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/requestContentLengthUncompressed``
            - ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/responseContentLength``
            - ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/responseContentLengthUncompressed``
            - ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/scheme``
            - ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/serverName``
            - ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/statusCode``
            - ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/target``
            - ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/url``
            - ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/userAgent``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/http/clientIp``
            - ``OTelAttribute/http/flavor``
            - ``OTelAttribute/http/host``
            - ``OTelAttribute/http/method``
            - ``OTelAttribute/http/requestContentLength``
            - ``OTelAttribute/http/requestContentLengthUncompressed``
            - ``OTelAttribute/http/responseContentLength``
            - ``OTelAttribute/http/responseContentLengthUncompressed``
            - ``OTelAttribute/http/scheme``
            - ``OTelAttribute/http/serverName``
            - ``OTelAttribute/http/statusCode``
            - ``OTelAttribute/http/target``
            - ``OTelAttribute/http/url``
            - ``OTelAttribute/http/userAgent``
        }
    }
}

## iOS Attributes

This group describes iOS-specific attributes.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/IosAttributes/AppAttributes/NestedSpanAttributes/state``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/ios/app/state``
        }
    }
}

## Deprecated iOS Attributes

The iOS platform on which the iOS application is running.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/IosAttributes/NestedSpanAttributes/state``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/ios/state``
        }
    }
}

## Kubernetes Attributes

Kubernetes resource attributes.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/K8sAttributes/ClusterAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/K8sAttributes/ClusterAttributes/NestedSpanAttributes/uid``
            - ``Tracing/SpanAttributes/K8sAttributes/ContainerAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/K8sAttributes/ContainerAttributes/NestedSpanAttributes/restartCount``
            - ``Tracing/SpanAttributes/K8sAttributes/ContainerAttributes/StatusAttributes/NestedSpanAttributes/lastTerminatedReason``
            - ``Tracing/SpanAttributes/K8sAttributes/ContainerAttributes/StatusAttributes/NestedSpanAttributes/reason``
            - ``Tracing/SpanAttributes/K8sAttributes/ContainerAttributes/StatusAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/K8sAttributes/CronjobAttributes/annotation``
            - ``Tracing/SpanAttributes/K8sAttributes/CronjobAttributes/label``
            - ``Tracing/SpanAttributes/K8sAttributes/CronjobAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/K8sAttributes/CronjobAttributes/NestedSpanAttributes/uid``
            - ``Tracing/SpanAttributes/K8sAttributes/DaemonsetAttributes/annotation``
            - ``Tracing/SpanAttributes/K8sAttributes/DaemonsetAttributes/label``
            - ``Tracing/SpanAttributes/K8sAttributes/DaemonsetAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/K8sAttributes/DaemonsetAttributes/NestedSpanAttributes/uid``
            - ``Tracing/SpanAttributes/K8sAttributes/DeploymentAttributes/annotation``
            - ``Tracing/SpanAttributes/K8sAttributes/DeploymentAttributes/label``
            - ``Tracing/SpanAttributes/K8sAttributes/DeploymentAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/K8sAttributes/DeploymentAttributes/NestedSpanAttributes/uid``
            - ``Tracing/SpanAttributes/K8sAttributes/HpaAttributes/MetricAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/K8sAttributes/HpaAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/K8sAttributes/HpaAttributes/ScaletargetrefAttributes/NestedSpanAttributes/apiVersion``
            - ``Tracing/SpanAttributes/K8sAttributes/HpaAttributes/ScaletargetrefAttributes/NestedSpanAttributes/kind``
            - ``Tracing/SpanAttributes/K8sAttributes/HpaAttributes/ScaletargetrefAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/K8sAttributes/HpaAttributes/NestedSpanAttributes/uid``
            - ``Tracing/SpanAttributes/K8sAttributes/HugepageAttributes/NestedSpanAttributes/size``
            - ``Tracing/SpanAttributes/K8sAttributes/JobAttributes/annotation``
            - ``Tracing/SpanAttributes/K8sAttributes/JobAttributes/label``
            - ``Tracing/SpanAttributes/K8sAttributes/JobAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/K8sAttributes/JobAttributes/NestedSpanAttributes/uid``
            - ``Tracing/SpanAttributes/K8sAttributes/NamespaceAttributes/annotation``
            - ``Tracing/SpanAttributes/K8sAttributes/NamespaceAttributes/label``
            - ``Tracing/SpanAttributes/K8sAttributes/NamespaceAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/K8sAttributes/NamespaceAttributes/NestedSpanAttributes/phase``
            - ``Tracing/SpanAttributes/K8sAttributes/NodeAttributes/annotation``
            - ``Tracing/SpanAttributes/K8sAttributes/NodeAttributes/ConditionAttributes/NestedSpanAttributes/status``
            - ``Tracing/SpanAttributes/K8sAttributes/NodeAttributes/ConditionAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/K8sAttributes/NodeAttributes/label``
            - ``Tracing/SpanAttributes/K8sAttributes/NodeAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/K8sAttributes/NodeAttributes/NestedSpanAttributes/uid``
            - ``Tracing/SpanAttributes/K8sAttributes/PodAttributes/annotation``
            - ``Tracing/SpanAttributes/K8sAttributes/PodAttributes/label``
            - ``Tracing/SpanAttributes/K8sAttributes/PodAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/K8sAttributes/PodAttributes/StatusAttributes/NestedSpanAttributes/phase``
            - ``Tracing/SpanAttributes/K8sAttributes/PodAttributes/StatusAttributes/NestedSpanAttributes/reason``
            - ``Tracing/SpanAttributes/K8sAttributes/PodAttributes/NestedSpanAttributes/uid``
            - ``Tracing/SpanAttributes/K8sAttributes/ReplicasetAttributes/annotation``
            - ``Tracing/SpanAttributes/K8sAttributes/ReplicasetAttributes/label``
            - ``Tracing/SpanAttributes/K8sAttributes/ReplicasetAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/K8sAttributes/ReplicasetAttributes/NestedSpanAttributes/uid``
            - ``Tracing/SpanAttributes/K8sAttributes/ReplicationcontrollerAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/K8sAttributes/ReplicationcontrollerAttributes/NestedSpanAttributes/uid``
            - ``Tracing/SpanAttributes/K8sAttributes/ResourcequotaAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/K8sAttributes/ResourcequotaAttributes/NestedSpanAttributes/resourceName``
            - ``Tracing/SpanAttributes/K8sAttributes/ResourcequotaAttributes/NestedSpanAttributes/uid``
            - ``Tracing/SpanAttributes/K8sAttributes/StatefulsetAttributes/annotation``
            - ``Tracing/SpanAttributes/K8sAttributes/StatefulsetAttributes/label``
            - ``Tracing/SpanAttributes/K8sAttributes/StatefulsetAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/K8sAttributes/StatefulsetAttributes/NestedSpanAttributes/uid``
            - ``Tracing/SpanAttributes/K8sAttributes/StorageclassAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/K8sAttributes/VolumeAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/K8sAttributes/VolumeAttributes/NestedSpanAttributes/type``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/k8s/cluster/name``
            - ``OTelAttribute/k8s/cluster/uid``
            - ``OTelAttribute/k8s/container/name``
            - ``OTelAttribute/k8s/container/restartCount``
            - ``OTelAttribute/k8s/container/status/lastTerminatedReason``
            - ``OTelAttribute/k8s/container/status/reason``
            - ``OTelAttribute/k8s/container/status/state``
            - ``OTelAttribute/k8s/cronjob/annotation``
            - ``OTelAttribute/k8s/cronjob/label``
            - ``OTelAttribute/k8s/cronjob/name``
            - ``OTelAttribute/k8s/cronjob/uid``
            - ``OTelAttribute/k8s/daemonset/annotation``
            - ``OTelAttribute/k8s/daemonset/label``
            - ``OTelAttribute/k8s/daemonset/name``
            - ``OTelAttribute/k8s/daemonset/uid``
            - ``OTelAttribute/k8s/deployment/annotation``
            - ``OTelAttribute/k8s/deployment/label``
            - ``OTelAttribute/k8s/deployment/name``
            - ``OTelAttribute/k8s/deployment/uid``
            - ``OTelAttribute/k8s/hpa/metric/type``
            - ``OTelAttribute/k8s/hpa/name``
            - ``OTelAttribute/k8s/hpa/scaletargetref/apiVersion``
            - ``OTelAttribute/k8s/hpa/scaletargetref/kind``
            - ``OTelAttribute/k8s/hpa/scaletargetref/name``
            - ``OTelAttribute/k8s/hpa/uid``
            - ``OTelAttribute/k8s/hugepage/size``
            - ``OTelAttribute/k8s/job/annotation``
            - ``OTelAttribute/k8s/job/label``
            - ``OTelAttribute/k8s/job/name``
            - ``OTelAttribute/k8s/job/uid``
            - ``OTelAttribute/k8s/namespace/annotation``
            - ``OTelAttribute/k8s/namespace/label``
            - ``OTelAttribute/k8s/namespace/name``
            - ``OTelAttribute/k8s/namespace/phase``
            - ``OTelAttribute/k8s/node/annotation``
            - ``OTelAttribute/k8s/node/condition/status``
            - ``OTelAttribute/k8s/node/condition/type``
            - ``OTelAttribute/k8s/node/label``
            - ``OTelAttribute/k8s/node/name``
            - ``OTelAttribute/k8s/node/uid``
            - ``OTelAttribute/k8s/pod/annotation``
            - ``OTelAttribute/k8s/pod/label``
            - ``OTelAttribute/k8s/pod/name``
            - ``OTelAttribute/k8s/pod/status/phase``
            - ``OTelAttribute/k8s/pod/status/reason``
            - ``OTelAttribute/k8s/pod/uid``
            - ``OTelAttribute/k8s/replicaset/annotation``
            - ``OTelAttribute/k8s/replicaset/label``
            - ``OTelAttribute/k8s/replicaset/name``
            - ``OTelAttribute/k8s/replicaset/uid``
            - ``OTelAttribute/k8s/replicationcontroller/name``
            - ``OTelAttribute/k8s/replicationcontroller/uid``
            - ``OTelAttribute/k8s/resourcequota/name``
            - ``OTelAttribute/k8s/resourcequota/resourceName``
            - ``OTelAttribute/k8s/resourcequota/uid``
            - ``OTelAttribute/k8s/statefulset/annotation``
            - ``OTelAttribute/k8s/statefulset/label``
            - ``OTelAttribute/k8s/statefulset/name``
            - ``OTelAttribute/k8s/statefulset/uid``
            - ``OTelAttribute/k8s/storageclass/name``
            - ``OTelAttribute/k8s/volume/name``
            - ``OTelAttribute/k8s/volume/type``
        }
    }
}

## Deprecated Kubernetes Attributes

Describes deprecated k8s attributes.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/K8sAttributes/PodAttributes/labels``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/k8s/pod/labels``
        }
    }
}

## Linux Memory Attributes

Describes Linux Memory attributes
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/LinuxAttributes/MemoryAttributes/SlabAttributes/NestedSpanAttributes/state``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/linux/memory/slab/state``
        }
    }
}

## General Log Attributes

This document defines log attributes

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/LogAttributes/NestedSpanAttributes/iostream``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/log/iostream``
        }
    }
}

## Log File Attributes

Attributes for a file to which log was emitted.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/LogAttributes/FileAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/LogAttributes/FileAttributes/NestedSpanAttributes/nameResolved``
            - ``Tracing/SpanAttributes/LogAttributes/FileAttributes/NestedSpanAttributes/path``
            - ``Tracing/SpanAttributes/LogAttributes/FileAttributes/NestedSpanAttributes/pathResolved``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/log/file/name``
            - ``OTelAttribute/log/file/nameResolved``
            - ``OTelAttribute/log/file/path``
            - ``OTelAttribute/log/file/pathResolved``
        }
    }
}

## Log Record Attributes

This document defines the generic attributes that may be used in any Log Record.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/LogAttributes/RecordAttributes/NestedSpanAttributes/original``
            - ``Tracing/SpanAttributes/LogAttributes/RecordAttributes/NestedSpanAttributes/uid``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/log/record/original``
            - ``OTelAttribute/log/record/uid``
        }
    }
}

## General Messaging Attributes

Attributes describing telemetry around messaging systems and messaging activities.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/MessagingAttributes/BatchAttributes/NestedSpanAttributes/messageCount``
            - ``Tracing/SpanAttributes/MessagingAttributes/ClientAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/MessagingAttributes/ConsumerAttributes/GroupAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/MessagingAttributes/DestinationAttributes/NestedSpanAttributes/anonymous``
            - ``Tracing/SpanAttributes/MessagingAttributes/DestinationAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/MessagingAttributes/DestinationAttributes/PartitionAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/MessagingAttributes/DestinationAttributes/SubscriptionAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/MessagingAttributes/DestinationAttributes/NestedSpanAttributes/template``
            - ``Tracing/SpanAttributes/MessagingAttributes/DestinationAttributes/NestedSpanAttributes/temporary``
            - ``Tracing/SpanAttributes/MessagingAttributes/MessageAttributes/BodyAttributes/NestedSpanAttributes/size``
            - ``Tracing/SpanAttributes/MessagingAttributes/MessageAttributes/NestedSpanAttributes/conversationId``
            - ``Tracing/SpanAttributes/MessagingAttributes/MessageAttributes/EnvelopeAttributes/NestedSpanAttributes/size``
            - ``Tracing/SpanAttributes/MessagingAttributes/MessageAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/MessagingAttributes/OperationAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/MessagingAttributes/OperationAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/MessagingAttributes/NestedSpanAttributes/system``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/messaging/batch/messageCount``
            - ``OTelAttribute/messaging/client/id``
            - ``OTelAttribute/messaging/consumer/group/name``
            - ``OTelAttribute/messaging/destination/anonymous``
            - ``OTelAttribute/messaging/destination/name``
            - ``OTelAttribute/messaging/destination/partition/id``
            - ``OTelAttribute/messaging/destination/subscription/name``
            - ``OTelAttribute/messaging/destination/template``
            - ``OTelAttribute/messaging/destination/temporary``
            - ``OTelAttribute/messaging/message/body/size``
            - ``OTelAttribute/messaging/message/conversationId``
            - ``OTelAttribute/messaging/message/envelope/size``
            - ``OTelAttribute/messaging/message/id``
            - ``OTelAttribute/messaging/operation/name``
            - ``OTelAttribute/messaging/operation/type``
            - ``OTelAttribute/messaging/system``
        }
    }
}

## Deprecated Messaging Attributes

Describes deprecated messaging attributes.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/MessagingAttributes/NestedSpanAttributes/clientId``
            - ``Tracing/SpanAttributes/MessagingAttributes/DestinationPublishAttributes/NestedSpanAttributes/anonymous``
            - ``Tracing/SpanAttributes/MessagingAttributes/DestinationPublishAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/MessagingAttributes/EventhubsAttributes/ConsumerAttributes/NestedSpanAttributes/group``
            - ``Tracing/SpanAttributes/MessagingAttributes/KafkaAttributes/ConsumerAttributes/NestedSpanAttributes/group``
            - ``Tracing/SpanAttributes/MessagingAttributes/KafkaAttributes/DestinationAttributes/NestedSpanAttributes/partition``
            - ``Tracing/SpanAttributes/MessagingAttributes/KafkaAttributes/MessageAttributes/NestedSpanAttributes/offset``
            - ``Tracing/SpanAttributes/MessagingAttributes/NestedSpanAttributes/_operation``
            - ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/NestedSpanAttributes/clientGroup``
            - ``Tracing/SpanAttributes/MessagingAttributes/ServicebusAttributes/DestinationAttributes/NestedSpanAttributes/subscriptionName``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/messaging/clientId``
            - ``OTelAttribute/messaging/destinationPublish/anonymous``
            - ``OTelAttribute/messaging/destinationPublish/name``
            - ``OTelAttribute/messaging/eventhubs/consumer/group``
            - ``OTelAttribute/messaging/kafka/consumer/group``
            - ``OTelAttribute/messaging/kafka/destination/partition``
            - ``OTelAttribute/messaging/kafka/message/offset``
            - ``OTelAttribute/messaging/_operation``
            - ``OTelAttribute/messaging/rocketmq/clientGroup``
            - ``OTelAttribute/messaging/servicebus/destination/subscriptionName``
        }
    }
}

## Azure Event Hubs Attributes

This group describes attributes specific to Azure Event Hubs.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/MessagingAttributes/EventhubsAttributes/MessageAttributes/NestedSpanAttributes/enqueuedTime``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/messaging/eventhubs/message/enqueuedTime``
        }
    }
}

## GCP Pub/Sub Attributes

This group describes attributes specific to GCP Pub/Sub.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/MessagingAttributes/GcpPubsubAttributes/MessageAttributes/NestedSpanAttributes/ackDeadline``
            - ``Tracing/SpanAttributes/MessagingAttributes/GcpPubsubAttributes/MessageAttributes/NestedSpanAttributes/ackId``
            - ``Tracing/SpanAttributes/MessagingAttributes/GcpPubsubAttributes/MessageAttributes/NestedSpanAttributes/deliveryAttempt``
            - ``Tracing/SpanAttributes/MessagingAttributes/GcpPubsubAttributes/MessageAttributes/NestedSpanAttributes/orderingKey``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/messaging/gcpPubsub/message/ackDeadline``
            - ``OTelAttribute/messaging/gcpPubsub/message/ackId``
            - ``OTelAttribute/messaging/gcpPubsub/message/deliveryAttempt``
            - ``OTelAttribute/messaging/gcpPubsub/message/orderingKey``
        }
    }
}

## Kafka Attributes

This group describes attributes specific to Apache Kafka.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/MessagingAttributes/KafkaAttributes/MessageAttributes/NestedSpanAttributes/key``
            - ``Tracing/SpanAttributes/MessagingAttributes/KafkaAttributes/MessageAttributes/NestedSpanAttributes/tombstone``
            - ``Tracing/SpanAttributes/MessagingAttributes/KafkaAttributes/NestedSpanAttributes/offset``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/messaging/kafka/message/key``
            - ``OTelAttribute/messaging/kafka/message/tombstone``
            - ``OTelAttribute/messaging/kafka/offset``
        }
    }
}

## RabbitMQ Attributes

This group describes attributes specific to RabbitMQ.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/MessagingAttributes/RabbitmqAttributes/DestinationAttributes/NestedSpanAttributes/routingKey``
            - ``Tracing/SpanAttributes/MessagingAttributes/RabbitmqAttributes/MessageAttributes/NestedSpanAttributes/deliveryTag``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/messaging/rabbitmq/destination/routingKey``
            - ``OTelAttribute/messaging/rabbitmq/message/deliveryTag``
        }
    }
}

## RocketMQ Attributes

This group describes attributes specific to RocketMQ.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/NestedSpanAttributes/consumptionModel``
            - ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/MessageAttributes/NestedSpanAttributes/delayTimeLevel``
            - ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/MessageAttributes/NestedSpanAttributes/deliveryTimestamp``
            - ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/MessageAttributes/NestedSpanAttributes/group``
            - ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/MessageAttributes/NestedSpanAttributes/keys``
            - ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/MessageAttributes/NestedSpanAttributes/tag``
            - ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/MessageAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/NestedSpanAttributes/namespace``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/messaging/rocketmq/consumptionModel``
            - ``OTelAttribute/messaging/rocketmq/message/delayTimeLevel``
            - ``OTelAttribute/messaging/rocketmq/message/deliveryTimestamp``
            - ``OTelAttribute/messaging/rocketmq/message/group``
            - ``OTelAttribute/messaging/rocketmq/message/keys``
            - ``OTelAttribute/messaging/rocketmq/message/tag``
            - ``OTelAttribute/messaging/rocketmq/message/type``
            - ``OTelAttribute/messaging/rocketmq/namespace``
        }
    }
}

## Azure Service Bus Attributes

This group describes attributes specific to Azure Service Bus.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/MessagingAttributes/ServicebusAttributes/NestedSpanAttributes/dispositionStatus``
            - ``Tracing/SpanAttributes/MessagingAttributes/ServicebusAttributes/MessageAttributes/NestedSpanAttributes/deliveryCount``
            - ``Tracing/SpanAttributes/MessagingAttributes/ServicebusAttributes/MessageAttributes/NestedSpanAttributes/enqueuedTime``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/messaging/servicebus/dispositionStatus``
            - ``OTelAttribute/messaging/servicebus/message/deliveryCount``
            - ``OTelAttribute/messaging/servicebus/message/enqueuedTime``
        }
    }
}

## Network Attributes

These attributes may be used for any network related operation.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/NetworkAttributes/CarrierAttributes/NestedSpanAttributes/icc``
            - ``Tracing/SpanAttributes/NetworkAttributes/CarrierAttributes/NestedSpanAttributes/mcc``
            - ``Tracing/SpanAttributes/NetworkAttributes/CarrierAttributes/NestedSpanAttributes/mnc``
            - ``Tracing/SpanAttributes/NetworkAttributes/CarrierAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/NetworkAttributes/ConnectionAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/NetworkAttributes/ConnectionAttributes/NestedSpanAttributes/subtype``
            - ``Tracing/SpanAttributes/NetworkAttributes/ConnectionAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/NetworkAttributes/InterfaceAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/NetworkAttributes/IoAttributes/NestedSpanAttributes/direction``
            - ``Tracing/SpanAttributes/NetworkAttributes/LocalAttributes/NestedSpanAttributes/address``
            - ``Tracing/SpanAttributes/NetworkAttributes/LocalAttributes/NestedSpanAttributes/port``
            - ``Tracing/SpanAttributes/NetworkAttributes/PeerAttributes/NestedSpanAttributes/address``
            - ``Tracing/SpanAttributes/NetworkAttributes/PeerAttributes/NestedSpanAttributes/port``
            - ``Tracing/SpanAttributes/NetworkAttributes/ProtocolAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/NetworkAttributes/ProtocolAttributes/NestedSpanAttributes/version``
            - ``Tracing/SpanAttributes/NetworkAttributes/NestedSpanAttributes/transport``
            - ``Tracing/SpanAttributes/NetworkAttributes/NestedSpanAttributes/type``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/network/carrier/icc``
            - ``OTelAttribute/network/carrier/mcc``
            - ``OTelAttribute/network/carrier/mnc``
            - ``OTelAttribute/network/carrier/name``
            - ``OTelAttribute/network/connection/state``
            - ``OTelAttribute/network/connection/subtype``
            - ``OTelAttribute/network/connection/type``
            - ``OTelAttribute/network/interface/name``
            - ``OTelAttribute/network/io/direction``
            - ``OTelAttribute/network/local/address``
            - ``OTelAttribute/network/local/port``
            - ``OTelAttribute/network/peer/address``
            - ``OTelAttribute/network/peer/port``
            - ``OTelAttribute/network/protocol/name``
            - ``OTelAttribute/network/protocol/version``
            - ``OTelAttribute/network/transport``
            - ``OTelAttribute/network/type``
        }
    }
}

## Deprecated Network Attributes

These attributes may be used for any network related operation.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/NetAttributes/HostAttributes/NestedSpanAttributes/ip``
            - ``Tracing/SpanAttributes/NetAttributes/HostAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/NetAttributes/HostAttributes/NestedSpanAttributes/port``
            - ``Tracing/SpanAttributes/NetAttributes/PeerAttributes/NestedSpanAttributes/ip``
            - ``Tracing/SpanAttributes/NetAttributes/PeerAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/NetAttributes/PeerAttributes/NestedSpanAttributes/port``
            - ``Tracing/SpanAttributes/NetAttributes/ProtocolAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/NetAttributes/ProtocolAttributes/NestedSpanAttributes/version``
            - ``Tracing/SpanAttributes/NetAttributes/SockAttributes/NestedSpanAttributes/family``
            - ``Tracing/SpanAttributes/NetAttributes/SockAttributes/HostAttributes/NestedSpanAttributes/addr``
            - ``Tracing/SpanAttributes/NetAttributes/SockAttributes/HostAttributes/NestedSpanAttributes/port``
            - ``Tracing/SpanAttributes/NetAttributes/SockAttributes/PeerAttributes/NestedSpanAttributes/addr``
            - ``Tracing/SpanAttributes/NetAttributes/SockAttributes/PeerAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/NetAttributes/SockAttributes/PeerAttributes/NestedSpanAttributes/port``
            - ``Tracing/SpanAttributes/NetAttributes/NestedSpanAttributes/transport``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/net/host/ip``
            - ``OTelAttribute/net/host/name``
            - ``OTelAttribute/net/host/port``
            - ``OTelAttribute/net/peer/ip``
            - ``OTelAttribute/net/peer/name``
            - ``OTelAttribute/net/peer/port``
            - ``OTelAttribute/net/protocol/name``
            - ``OTelAttribute/net/protocol/version``
            - ``OTelAttribute/net/sock/family``
            - ``OTelAttribute/net/sock/host/addr``
            - ``OTelAttribute/net/sock/host/port``
            - ``OTelAttribute/net/sock/peer/addr``
            - ``OTelAttribute/net/sock/peer/name``
            - ``OTelAttribute/net/sock/peer/port``
            - ``OTelAttribute/net/transport``
        }
    }
}

## NFS Attributes

Describes NFS Attributes

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/NfsAttributes/OperationAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/NfsAttributes/ServerAttributes/RepcacheAttributes/NestedSpanAttributes/status``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/nfs/operation/name``
            - ``OTelAttribute/nfs/server/repcache/status``
        }
    }
}

## Open Container Initiative (OCI) Attributes

An OCI image manifest.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/OciAttributes/ManifestAttributes/NestedSpanAttributes/digest``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/oci/manifest/digest``
        }
    }
}

## ONC RPC (Sun RPC) attributes

This document defines attributes for [ONC RPC (Sun RPC)](https://datatracker.ietf.org/doc/html/rfc5531)
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/OncRpcAttributes/ProcedureAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/OncRpcAttributes/ProcedureAttributes/NestedSpanAttributes/number``
            - ``Tracing/SpanAttributes/OncRpcAttributes/ProgramAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/OncRpcAttributes/NestedSpanAttributes/version``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/oncRpc/procedure/name``
            - ``OTelAttribute/oncRpc/procedure/number``
            - ``OTelAttribute/oncRpc/program/name``
            - ``OTelAttribute/oncRpc/version``
        }
    }
}

## OpenAI Attributes

This group defines attributes for OpenAI.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/OpenaiAttributes/RequestAttributes/NestedSpanAttributes/serviceTier``
            - ``Tracing/SpanAttributes/OpenaiAttributes/ResponseAttributes/NestedSpanAttributes/serviceTier``
            - ``Tracing/SpanAttributes/OpenaiAttributes/ResponseAttributes/NestedSpanAttributes/systemFingerprint``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/openai/request/serviceTier``
            - ``OTelAttribute/openai/response/serviceTier``
            - ``OTelAttribute/openai/response/systemFingerprint``
        }
    }
}

## Openshift Attributes

OpenShift resource attributes.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/OpenshiftAttributes/ClusterquotaAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/OpenshiftAttributes/ClusterquotaAttributes/NestedSpanAttributes/uid``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/openshift/clusterquota/name``
            - ``OTelAttribute/openshift/clusterquota/uid``
        }
    }
}

## OpenTracing Attributes

Attributes used by the OpenTracing Shim layer.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/OpentracingAttributes/NestedSpanAttributes/refType``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/opentracing/refType``
        }
    }
}

## Operating System Attributes

The operating system (OS) on which the process represented by this resource is running.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/OsAttributes/NestedSpanAttributes/buildId``
            - ``Tracing/SpanAttributes/OsAttributes/NestedSpanAttributes/description``
            - ``Tracing/SpanAttributes/OsAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/OsAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/OsAttributes/NestedSpanAttributes/version``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/os/buildId``
            - ``OTelAttribute/os/description``
            - ``OTelAttribute/os/name``
            - ``OTelAttribute/os/type``
            - ``OTelAttribute/os/version``
        }
    }
}

## OTel Attributes

Attributes reserved for OpenTelemetry
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/OtelAttributes/SpanAttributes/ParentAttributes/NestedSpanAttributes/origin``
            - ``Tracing/SpanAttributes/OtelAttributes/SpanAttributes/NestedSpanAttributes/samplingResult``
            - ``Tracing/SpanAttributes/OtelAttributes/NestedSpanAttributes/statusCode``
            - ``Tracing/SpanAttributes/OtelAttributes/NestedSpanAttributes/statusDescription``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/otel/span/parent/origin``
            - ``OTelAttribute/otel/span/samplingResult``
            - ``OTelAttribute/otel/statusCode``
            - ``OTelAttribute/otel/statusDescription``
        }
    }
}

## OTel Component Attributes

Attributes used for OpenTelemetry component self-monitoring
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/OtelAttributes/ComponentAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/OtelAttributes/ComponentAttributes/NestedSpanAttributes/type``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/otel/component/name``
            - ``OTelAttribute/otel/component/type``
        }
    }
}

## Deprecated OTel Library Attributes

Describes deprecated otel.library attributes.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/OtelAttributes/LibraryAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/OtelAttributes/LibraryAttributes/NestedSpanAttributes/version``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/otel/library/name``
            - ``OTelAttribute/otel/library/version``
        }
    }
}

## OTel Scope Attributes

Attributes used by non-OTLP exporters to represent OpenTelemetry Scope's concepts.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/OtelAttributes/ScopeAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/OtelAttributes/ScopeAttributes/NestedSpanAttributes/schemaUrl``
            - ``Tracing/SpanAttributes/OtelAttributes/ScopeAttributes/NestedSpanAttributes/version``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/otel/scope/name``
            - ``OTelAttribute/otel/scope/schemaUrl``
            - ``OTelAttribute/otel/scope/version``
        }
    }
}

## Peer Attributes

These attribute may be used for any operation that accesses some remote service.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/PeerAttributes/NestedSpanAttributes/service``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/peer/service``
        }
    }
}

## Pprof specific attributes for the Profiling signal

Attributes specific to pprof that help convert from pprof to Profiling signal.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/PprofAttributes/LocationAttributes/NestedSpanAttributes/isFolded``
            - ``Tracing/SpanAttributes/PprofAttributes/MappingAttributes/NestedSpanAttributes/hasFilenames``
            - ``Tracing/SpanAttributes/PprofAttributes/MappingAttributes/NestedSpanAttributes/hasFunctions``
            - ``Tracing/SpanAttributes/PprofAttributes/MappingAttributes/NestedSpanAttributes/hasInlineFrames``
            - ``Tracing/SpanAttributes/PprofAttributes/MappingAttributes/NestedSpanAttributes/hasLineNumbers``
            - ``Tracing/SpanAttributes/PprofAttributes/ProfileAttributes/NestedSpanAttributes/comment``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/pprof/location/isFolded``
            - ``OTelAttribute/pprof/mapping/hasFilenames``
            - ``OTelAttribute/pprof/mapping/hasFunctions``
            - ``OTelAttribute/pprof/mapping/hasInlineFrames``
            - ``OTelAttribute/pprof/mapping/hasLineNumbers``
            - ``OTelAttribute/pprof/profile/comment``
        }
    }
}

## Process Attributes

An operating system process.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/argsCount``
            - ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/command``
            - ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/commandArgs``
            - ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/commandLine``
            - ``Tracing/SpanAttributes/ProcessAttributes/ContextSwitchAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/ProcessAttributes/CreationAttributes/NestedSpanAttributes/time``
            - ``Tracing/SpanAttributes/ProcessAttributes/environmentVariable``
            - ``Tracing/SpanAttributes/ProcessAttributes/ExecutableAttributes/BuildIdAttributes/NestedSpanAttributes/gnu``
            - ``Tracing/SpanAttributes/ProcessAttributes/ExecutableAttributes/BuildIdAttributes/NestedSpanAttributes/go``
            - ``Tracing/SpanAttributes/ProcessAttributes/ExecutableAttributes/BuildIdAttributes/NestedSpanAttributes/htlhash``
            - ``Tracing/SpanAttributes/ProcessAttributes/ExecutableAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/ProcessAttributes/ExecutableAttributes/NestedSpanAttributes/path``
            - ``Tracing/SpanAttributes/ProcessAttributes/ExitAttributes/NestedSpanAttributes/code``
            - ``Tracing/SpanAttributes/ProcessAttributes/ExitAttributes/NestedSpanAttributes/time``
            - ``Tracing/SpanAttributes/ProcessAttributes/GroupLeaderAttributes/NestedSpanAttributes/pid``
            - ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/interactive``
            - ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/owner``
            - ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/parentPid``
            - ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/pid``
            - ``Tracing/SpanAttributes/ProcessAttributes/RealUserAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/ProcessAttributes/RealUserAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/ProcessAttributes/RuntimeAttributes/NestedSpanAttributes/description``
            - ``Tracing/SpanAttributes/ProcessAttributes/RuntimeAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/ProcessAttributes/RuntimeAttributes/NestedSpanAttributes/version``
            - ``Tracing/SpanAttributes/ProcessAttributes/SavedUserAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/ProcessAttributes/SavedUserAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/ProcessAttributes/SessionLeaderAttributes/NestedSpanAttributes/pid``
            - ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/title``
            - ``Tracing/SpanAttributes/ProcessAttributes/UserAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/ProcessAttributes/UserAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/vpid``
            - ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/workingDirectory``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/process/argsCount``
            - ``OTelAttribute/process/command``
            - ``OTelAttribute/process/commandArgs``
            - ``OTelAttribute/process/commandLine``
            - ``OTelAttribute/process/contextSwitch/type``
            - ``OTelAttribute/process/creation/time``
            - ``OTelAttribute/process/environmentVariable``
            - ``OTelAttribute/process/executable/buildId/gnu``
            - ``OTelAttribute/process/executable/buildId/go``
            - ``OTelAttribute/process/executable/buildId/htlhash``
            - ``OTelAttribute/process/executable/name``
            - ``OTelAttribute/process/executable/path``
            - ``OTelAttribute/process/exit/code``
            - ``OTelAttribute/process/exit/time``
            - ``OTelAttribute/process/groupLeader/pid``
            - ``OTelAttribute/process/interactive``
            - ``OTelAttribute/process/owner``
            - ``OTelAttribute/process/parentPid``
            - ``OTelAttribute/process/pid``
            - ``OTelAttribute/process/realUser/id``
            - ``OTelAttribute/process/realUser/name``
            - ``OTelAttribute/process/runtime/description``
            - ``OTelAttribute/process/runtime/name``
            - ``OTelAttribute/process/runtime/version``
            - ``OTelAttribute/process/savedUser/id``
            - ``OTelAttribute/process/savedUser/name``
            - ``OTelAttribute/process/sessionLeader/pid``
            - ``OTelAttribute/process/state``
            - ``OTelAttribute/process/title``
            - ``OTelAttribute/process/user/id``
            - ``OTelAttribute/process/user/name``
            - ``OTelAttribute/process/vpid``
            - ``OTelAttribute/process/workingDirectory``
        }
    }
}

## Deprecated Process Attributes

Deprecated process attributes.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/contextSwitchType``
            - ``Tracing/SpanAttributes/ProcessAttributes/CpuAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/ProcessAttributes/ExecutableAttributes/BuildIdAttributes/NestedSpanAttributes/profiling``
            - ``Tracing/SpanAttributes/ProcessAttributes/PagingAttributes/NestedSpanAttributes/faultType``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/process/contextSwitchType``
            - ``OTelAttribute/process/cpu/state``
            - ``OTelAttribute/process/executable/buildId/profiling``
            - ``OTelAttribute/process/paging/faultType``
        }
    }
}

## registry.process.linux

Describes Linux Process attributes
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ProcessAttributes/LinuxAttributes/NestedSpanAttributes/cgroup``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/process/linux/cgroup``
        }
    }
}

## Profile Frame Attributes

Describes the origin of a single frame in a Profile.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ProfileAttributes/FrameAttributes/NestedSpanAttributes/type``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/profile/frame/type``
        }
    }
}

## Remote Procedure Call (RPC) Attributes

This document defines attributes for remote procedure calls.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/RpcAttributes/ConnectRpcAttributes/NestedSpanAttributes/errorCode``
            - ``Tracing/SpanAttributes/RpcAttributes/ConnectRpcAttributes/RequestAttributes/metadata``
            - ``Tracing/SpanAttributes/RpcAttributes/ConnectRpcAttributes/ResponseAttributes/metadata``
            - ``Tracing/SpanAttributes/RpcAttributes/GrpcAttributes/RequestAttributes/metadata``
            - ``Tracing/SpanAttributes/RpcAttributes/GrpcAttributes/ResponseAttributes/metadata``
            - ``Tracing/SpanAttributes/RpcAttributes/GrpcAttributes/NestedSpanAttributes/statusCode``
            - ``Tracing/SpanAttributes/RpcAttributes/JsonrpcAttributes/NestedSpanAttributes/errorCode``
            - ``Tracing/SpanAttributes/RpcAttributes/JsonrpcAttributes/NestedSpanAttributes/errorMessage``
            - ``Tracing/SpanAttributes/RpcAttributes/JsonrpcAttributes/NestedSpanAttributes/requestId``
            - ``Tracing/SpanAttributes/RpcAttributes/JsonrpcAttributes/NestedSpanAttributes/version``
            - ``Tracing/SpanAttributes/RpcAttributes/MessageAttributes/NestedSpanAttributes/compressedSize``
            - ``Tracing/SpanAttributes/RpcAttributes/MessageAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/RpcAttributes/MessageAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/RpcAttributes/MessageAttributes/NestedSpanAttributes/uncompressedSize``
            - ``Tracing/SpanAttributes/RpcAttributes/NestedSpanAttributes/method``
            - ``Tracing/SpanAttributes/RpcAttributes/NestedSpanAttributes/service``
            - ``Tracing/SpanAttributes/RpcAttributes/NestedSpanAttributes/system``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/rpc/connectRpc/errorCode``
            - ``OTelAttribute/rpc/connectRpc/request/metadata``
            - ``OTelAttribute/rpc/connectRpc/response/metadata``
            - ``OTelAttribute/rpc/grpc/request/metadata``
            - ``OTelAttribute/rpc/grpc/response/metadata``
            - ``OTelAttribute/rpc/grpc/statusCode``
            - ``OTelAttribute/rpc/jsonrpc/errorCode``
            - ``OTelAttribute/rpc/jsonrpc/errorMessage``
            - ``OTelAttribute/rpc/jsonrpc/requestId``
            - ``OTelAttribute/rpc/jsonrpc/version``
            - ``OTelAttribute/rpc/message/compressedSize``
            - ``OTelAttribute/rpc/message/id``
            - ``OTelAttribute/rpc/message/type``
            - ``OTelAttribute/rpc/message/uncompressedSize``
            - ``OTelAttribute/rpc/method``
            - ``OTelAttribute/rpc/service``
            - ``OTelAttribute/rpc/system``
        }
    }
}

## Deprecated RPC Attributes

Deprecated rpc message attributes.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/MessageAttributes/NestedSpanAttributes/compressedSize``
            - ``Tracing/SpanAttributes/MessageAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/MessageAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/MessageAttributes/NestedSpanAttributes/uncompressedSize``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/message/compressedSize``
            - ``OTelAttribute/message/id``
            - ``OTelAttribute/message/type``
            - ``OTelAttribute/message/uncompressedSize``
        }
    }
}

## Security Rule

Describes security rule attributes. Rule fields are used to capture the specifics of any observer or agent rules that generate alerts or other notable events.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/SecurityRuleAttributes/NestedSpanAttributes/category``
            - ``Tracing/SpanAttributes/SecurityRuleAttributes/NestedSpanAttributes/description``
            - ``Tracing/SpanAttributes/SecurityRuleAttributes/NestedSpanAttributes/license``
            - ``Tracing/SpanAttributes/SecurityRuleAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/SecurityRuleAttributes/NestedSpanAttributes/reference``
            - ``Tracing/SpanAttributes/SecurityRuleAttributes/RulesetAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/SecurityRuleAttributes/NestedSpanAttributes/uuid``
            - ``Tracing/SpanAttributes/SecurityRuleAttributes/NestedSpanAttributes/version``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/securityRule/category``
            - ``OTelAttribute/securityRule/description``
            - ``OTelAttribute/securityRule/license``
            - ``OTelAttribute/securityRule/name``
            - ``OTelAttribute/securityRule/reference``
            - ``OTelAttribute/securityRule/ruleset/name``
            - ``OTelAttribute/securityRule/uuid``
            - ``OTelAttribute/securityRule/version``
        }
    }
}

## Server Attributes

These attributes may be used to describe the server in a connection-based network interaction where there is one side that initiates the connection (the client is the side that initiates the connection). This covers all TCP network interactions since TCP is connection-based and one side initiates the connection (an exception is made for peer-to-peer communication over TCP where the "user-facing" surface of the protocol / API doesn't expose a clear notion of client and server). This also covers UDP network interactions where one side initiates the interaction, e.g. QUIC (HTTP/3) and DNS.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ServerAttributes/NestedSpanAttributes/address``
            - ``Tracing/SpanAttributes/ServerAttributes/NestedSpanAttributes/port``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/server/address``
            - ``OTelAttribute/server/port``
        }
    }
}

## Service Attributes

A service instance.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ServiceAttributes/InstanceAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/ServiceAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/ServiceAttributes/NestedSpanAttributes/namespace``
            - ``Tracing/SpanAttributes/ServiceAttributes/NestedSpanAttributes/version``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/service/instance/id``
            - ``OTelAttribute/service/name``
            - ``OTelAttribute/service/namespace``
            - ``OTelAttribute/service/version``
        }
    }
}

## Session Attributes

Session is defined as the period of time encompassing all activities performed by the application and the actions executed by the end user.
Consequently, a Session is represented as a collection of Logs, Events, and Spans emitted by the Client Application throughout the Session's duration. Each Session is assigned a unique identifier, which is included as an attribute in the Logs, Events, and Spans generated during the Session's lifecycle.
When a session reaches end of life, typically due to user inactivity or session timeout, a new session identifier will be assigned. The previous session identifier may be provided by the instrumentation so that telemetry backends can link the two sessions.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/SessionAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/SessionAttributes/NestedSpanAttributes/previousId``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/session/id``
            - ``OTelAttribute/session/previousId``
        }
    }
}

## Source Attributes

These attributes may be used to describe the sender of a network exchange/packet. These should be used when there is no client/server relationship between the two sides, or when that relationship is unknown. This covers low-level network interactions (e.g. packet tracing) where you don't know if there was a connection or which side initiated it. This also covers unidirectional UDP flows and peer-to-peer communication where the "user-facing" surface of the protocol / API doesn't expose a clear notion of client and server.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/SourceAttributes/NestedSpanAttributes/address``
            - ``Tracing/SpanAttributes/SourceAttributes/NestedSpanAttributes/port``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/source/address``
            - ``OTelAttribute/source/port``
        }
    }
}

## General System Attributes

Describes System attributes
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/SystemAttributes/NestedSpanAttributes/device``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/system/device``
        }
    }
}

## Deprecated System Attributes

Deprecated system attributes.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/SystemAttributes/CpuAttributes/NestedSpanAttributes/logicalNumber``
            - ``Tracing/SpanAttributes/SystemAttributes/CpuAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/SystemAttributes/NetworkAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/SystemAttributes/PagingAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/SystemAttributes/ProcessAttributes/NestedSpanAttributes/status``
            - ``Tracing/SpanAttributes/SystemAttributes/ProcessesAttributes/NestedSpanAttributes/status``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/system/cpu/logicalNumber``
            - ``OTelAttribute/system/cpu/state``
            - ``OTelAttribute/system/network/state``
            - ``OTelAttribute/system/paging/type``
            - ``OTelAttribute/system/process/status``
            - ``OTelAttribute/system/processes/status``
        }
    }
}

## Filesystem Attributes

Describes Filesystem attributes
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/SystemAttributes/FilesystemAttributes/NestedSpanAttributes/mode``
            - ``Tracing/SpanAttributes/SystemAttributes/FilesystemAttributes/NestedSpanAttributes/mountpoint``
            - ``Tracing/SpanAttributes/SystemAttributes/FilesystemAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/SystemAttributes/FilesystemAttributes/NestedSpanAttributes/type``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/system/filesystem/mode``
            - ``OTelAttribute/system/filesystem/mountpoint``
            - ``OTelAttribute/system/filesystem/state``
            - ``OTelAttribute/system/filesystem/type``
        }
    }
}

## System Memory Attributes

Describes System Memory attributes
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/SystemAttributes/MemoryAttributes/NestedSpanAttributes/state``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/system/memory/state``
        }
    }
}

## System Paging Attributes

Describes System Memory Paging attributes
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/SystemAttributes/PagingAttributes/NestedSpanAttributes/direction``
            - ``Tracing/SpanAttributes/SystemAttributes/PagingAttributes/FaultAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/SystemAttributes/PagingAttributes/NestedSpanAttributes/state``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/system/paging/direction``
            - ``OTelAttribute/system/paging/fault/type``
            - ``OTelAttribute/system/paging/state``
        }
    }
}

## Telemetry Attributes

This document defines attributes for telemetry SDK.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/TelemetryAttributes/DistroAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/TelemetryAttributes/DistroAttributes/NestedSpanAttributes/version``
            - ``Tracing/SpanAttributes/TelemetryAttributes/SdkAttributes/NestedSpanAttributes/language``
            - ``Tracing/SpanAttributes/TelemetryAttributes/SdkAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/TelemetryAttributes/SdkAttributes/NestedSpanAttributes/version``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/telemetry/distro/name``
            - ``OTelAttribute/telemetry/distro/version``
            - ``OTelAttribute/telemetry/sdk/language``
            - ``OTelAttribute/telemetry/sdk/name``
            - ``OTelAttribute/telemetry/sdk/version``
        }
    }
}

## Test Attributes

This group describes attributes specific to [software tests](https://wikipedia.org/wiki/Software_testing).

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/TestAttributes/CaseAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/TestAttributes/CaseAttributes/ResultAttributes/NestedSpanAttributes/status``
            - ``Tracing/SpanAttributes/TestAttributes/SuiteAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/TestAttributes/SuiteAttributes/RunAttributes/NestedSpanAttributes/status``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/test/case/name``
            - ``OTelAttribute/test/case/result/status``
            - ``OTelAttribute/test/suite/name``
            - ``OTelAttribute/test/suite/run/status``
        }
    }
}

## Thread Attributes

These attributes may be used for any operation to store information about a thread that started a span.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ThreadAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/ThreadAttributes/NestedSpanAttributes/name``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/thread/id``
            - ``OTelAttribute/thread/name``
        }
    }
}

## TLS Attributes

This document defines semantic convention attributes in the TLS namespace.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/TlsAttributes/NestedSpanAttributes/cipher``
            - ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/certificate``
            - ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/certificateChain``
            - ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/HashAttributes/NestedSpanAttributes/md5``
            - ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/HashAttributes/NestedSpanAttributes/sha1``
            - ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/HashAttributes/NestedSpanAttributes/sha256``
            - ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/issuer``
            - ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/ja3``
            - ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/notAfter``
            - ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/notBefore``
            - ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/subject``
            - ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/supportedCiphers``
            - ``Tracing/SpanAttributes/TlsAttributes/NestedSpanAttributes/curve``
            - ``Tracing/SpanAttributes/TlsAttributes/NestedSpanAttributes/established``
            - ``Tracing/SpanAttributes/TlsAttributes/NestedSpanAttributes/nextProtocol``
            - ``Tracing/SpanAttributes/TlsAttributes/ProtocolAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/TlsAttributes/ProtocolAttributes/NestedSpanAttributes/version``
            - ``Tracing/SpanAttributes/TlsAttributes/NestedSpanAttributes/resumed``
            - ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/NestedSpanAttributes/certificate``
            - ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/NestedSpanAttributes/certificateChain``
            - ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/HashAttributes/NestedSpanAttributes/md5``
            - ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/HashAttributes/NestedSpanAttributes/sha1``
            - ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/HashAttributes/NestedSpanAttributes/sha256``
            - ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/NestedSpanAttributes/issuer``
            - ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/NestedSpanAttributes/ja3s``
            - ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/NestedSpanAttributes/notAfter``
            - ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/NestedSpanAttributes/notBefore``
            - ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/NestedSpanAttributes/subject``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/tls/cipher``
            - ``OTelAttribute/tls/client/certificate``
            - ``OTelAttribute/tls/client/certificateChain``
            - ``OTelAttribute/tls/client/hash/md5``
            - ``OTelAttribute/tls/client/hash/sha1``
            - ``OTelAttribute/tls/client/hash/sha256``
            - ``OTelAttribute/tls/client/issuer``
            - ``OTelAttribute/tls/client/ja3``
            - ``OTelAttribute/tls/client/notAfter``
            - ``OTelAttribute/tls/client/notBefore``
            - ``OTelAttribute/tls/client/subject``
            - ``OTelAttribute/tls/client/supportedCiphers``
            - ``OTelAttribute/tls/curve``
            - ``OTelAttribute/tls/established``
            - ``OTelAttribute/tls/nextProtocol``
            - ``OTelAttribute/tls/protocol/name``
            - ``OTelAttribute/tls/protocol/version``
            - ``OTelAttribute/tls/resumed``
            - ``OTelAttribute/tls/server/certificate``
            - ``OTelAttribute/tls/server/certificateChain``
            - ``OTelAttribute/tls/server/hash/md5``
            - ``OTelAttribute/tls/server/hash/sha1``
            - ``OTelAttribute/tls/server/hash/sha256``
            - ``OTelAttribute/tls/server/issuer``
            - ``OTelAttribute/tls/server/ja3s``
            - ``OTelAttribute/tls/server/notAfter``
            - ``OTelAttribute/tls/server/notBefore``
            - ``OTelAttribute/tls/server/subject``
        }
    }
}

## registry.tls.deprecated

Describes deprecated `tls` attributes.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/serverName``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/tls/client/serverName``
        }
    }
}

## URL Attributes

Attributes describing URL.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/domain``
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/extension``
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/fragment``
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/full``
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/original``
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/path``
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/port``
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/query``
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/registeredDomain``
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/scheme``
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/subdomain``
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/template``
            - ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/topLevelDomain``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/url/domain``
            - ``OTelAttribute/url/extension``
            - ``OTelAttribute/url/fragment``
            - ``OTelAttribute/url/full``
            - ``OTelAttribute/url/original``
            - ``OTelAttribute/url/path``
            - ``OTelAttribute/url/port``
            - ``OTelAttribute/url/query``
            - ``OTelAttribute/url/registeredDomain``
            - ``OTelAttribute/url/scheme``
            - ``OTelAttribute/url/subdomain``
            - ``OTelAttribute/url/template``
            - ``OTelAttribute/url/topLevelDomain``
        }
    }
}

## User Attributes

Describes information about the user.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/UserAttributes/NestedSpanAttributes/email``
            - ``Tracing/SpanAttributes/UserAttributes/NestedSpanAttributes/fullName``
            - ``Tracing/SpanAttributes/UserAttributes/NestedSpanAttributes/hash``
            - ``Tracing/SpanAttributes/UserAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/UserAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/UserAttributes/NestedSpanAttributes/roles``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/user/email``
            - ``OTelAttribute/user/fullName``
            - ``OTelAttribute/user/hash``
            - ``OTelAttribute/user/id``
            - ``OTelAttribute/user/name``
            - ``OTelAttribute/user/roles``
        }
    }
}

## User-agent Attributes

Describes user-agent attributes.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/UserAgentAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/UserAgentAttributes/NestedSpanAttributes/original``
            - ``Tracing/SpanAttributes/UserAgentAttributes/NestedSpanAttributes/version``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/userAgent/name``
            - ``OTelAttribute/userAgent/original``
            - ``OTelAttribute/userAgent/version``
        }
    }
}

## User-agent OS Attributes

Describes the OS user-agent attributes.
@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/UserAgentAttributes/OsAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/UserAgentAttributes/OsAttributes/NestedSpanAttributes/version``
            - ``Tracing/SpanAttributes/UserAgentAttributes/SyntheticAttributes/NestedSpanAttributes/type``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/userAgent/os/name``
            - ``OTelAttribute/userAgent/os/version``
            - ``OTelAttribute/userAgent/synthetic/type``
        }
    }
}

## registry.vcs.deprecated

Describes deprecated vcs attributes.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/VcsAttributes/RepositoryAttributes/ChangeAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/VcsAttributes/RepositoryAttributes/ChangeAttributes/NestedSpanAttributes/title``
            - ``Tracing/SpanAttributes/VcsAttributes/RepositoryAttributes/RefAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/VcsAttributes/RepositoryAttributes/RefAttributes/NestedSpanAttributes/revision``
            - ``Tracing/SpanAttributes/VcsAttributes/RepositoryAttributes/RefAttributes/NestedSpanAttributes/type``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/vcs/repository/change/id``
            - ``OTelAttribute/vcs/repository/change/title``
            - ``OTelAttribute/vcs/repository/ref/name``
            - ``OTelAttribute/vcs/repository/ref/revision``
            - ``OTelAttribute/vcs/repository/ref/type``
        }
    }
}

## VCS Repository Attributes

This group defines the attributes for [Version Control Systems (VCS)](https://wikipedia.org/wiki/Version_control).

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/VcsAttributes/ChangeAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/VcsAttributes/ChangeAttributes/NestedSpanAttributes/state``
            - ``Tracing/SpanAttributes/VcsAttributes/ChangeAttributes/NestedSpanAttributes/title``
            - ``Tracing/SpanAttributes/VcsAttributes/LineChangeAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/VcsAttributes/OwnerAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/VcsAttributes/ProviderAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/VcsAttributes/RefAttributes/BaseAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/VcsAttributes/RefAttributes/BaseAttributes/NestedSpanAttributes/revision``
            - ``Tracing/SpanAttributes/VcsAttributes/RefAttributes/BaseAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/VcsAttributes/RefAttributes/HeadAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/VcsAttributes/RefAttributes/HeadAttributes/NestedSpanAttributes/revision``
            - ``Tracing/SpanAttributes/VcsAttributes/RefAttributes/HeadAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/VcsAttributes/RefAttributes/NestedSpanAttributes/type``
            - ``Tracing/SpanAttributes/VcsAttributes/RepositoryAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/VcsAttributes/RepositoryAttributes/UrlAttributes/NestedSpanAttributes/full``
            - ``Tracing/SpanAttributes/VcsAttributes/RevisionDeltaAttributes/NestedSpanAttributes/direction``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/vcs/change/id``
            - ``OTelAttribute/vcs/change/state``
            - ``OTelAttribute/vcs/change/title``
            - ``OTelAttribute/vcs/lineChange/type``
            - ``OTelAttribute/vcs/owner/name``
            - ``OTelAttribute/vcs/provider/name``
            - ``OTelAttribute/vcs/ref/base/name``
            - ``OTelAttribute/vcs/ref/base/revision``
            - ``OTelAttribute/vcs/ref/base/type``
            - ``OTelAttribute/vcs/ref/head/name``
            - ``OTelAttribute/vcs/ref/head/revision``
            - ``OTelAttribute/vcs/ref/head/type``
            - ``OTelAttribute/vcs/ref/type``
            - ``OTelAttribute/vcs/repository/name``
            - ``OTelAttribute/vcs/repository/url/full``
            - ``OTelAttribute/vcs/revisionDelta/direction``
        }
    }
}

## Web Engine Attributes

This document defines the attributes used to describe the packaged software running the application code.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/WebengineAttributes/NestedSpanAttributes/description``
            - ``Tracing/SpanAttributes/WebengineAttributes/NestedSpanAttributes/name``
            - ``Tracing/SpanAttributes/WebengineAttributes/NestedSpanAttributes/version``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/webengine/description``
            - ``OTelAttribute/webengine/name``
            - ``OTelAttribute/webengine/version``
        }
    }
}

## z/OS attributes

This document defines attributes of a z/OS resource.

@TabNavigator {
    @Tab("Span Attributes") {
        @Links(visualStyle: list) {
            - ``Tracing/SpanAttributes/ZosAttributes/SmfAttributes/NestedSpanAttributes/id``
            - ``Tracing/SpanAttributes/ZosAttributes/SysplexAttributes/NestedSpanAttributes/name``
        }
    }
    @Tab("String Constants") {
        @Links(visualStyle: list) {
            - ``OTelAttribute/zos/smf/id``
            - ``OTelAttribute/zos/sysplex/name``
        }
    }
}


## Topics

### Android Attributes

- ``Tracing/SpanAttributes/AndroidAttributes/AppAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/AndroidAttributes/OsAttributes/NestedSpanAttributes/apiLevel``
- ``OTelAttribute/android/app/state``
- ``OTelAttribute/android/os/apiLevel``

### Deprecated Android Attributes

- ``Tracing/SpanAttributes/AndroidAttributes/NestedSpanAttributes/state``
- ``OTelAttribute/android/state``

### Application Attributes

- ``Tracing/SpanAttributes/AppAttributes/NestedSpanAttributes/buildId``
- ``Tracing/SpanAttributes/AppAttributes/InstallationAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/AppAttributes/JankAttributes/NestedSpanAttributes/frameCount``
- ``Tracing/SpanAttributes/AppAttributes/JankAttributes/NestedSpanAttributes/period``
- ``Tracing/SpanAttributes/AppAttributes/JankAttributes/NestedSpanAttributes/threshold``
- ``Tracing/SpanAttributes/AppAttributes/ScreenAttributes/CoordinateAttributes/NestedSpanAttributes/x``
- ``Tracing/SpanAttributes/AppAttributes/ScreenAttributes/CoordinateAttributes/NestedSpanAttributes/y``
- ``Tracing/SpanAttributes/AppAttributes/ScreenAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/AppAttributes/ScreenAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/AppAttributes/WidgetAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/AppAttributes/WidgetAttributes/NestedSpanAttributes/name``
- ``OTelAttribute/app/buildId``
- ``OTelAttribute/app/installation/id``
- ``OTelAttribute/app/jank/frameCount``
- ``OTelAttribute/app/jank/period``
- ``OTelAttribute/app/jank/threshold``
- ``OTelAttribute/app/screen/coordinate/x``
- ``OTelAttribute/app/screen/coordinate/y``
- ``OTelAttribute/app/screen/id``
- ``OTelAttribute/app/screen/name``
- ``OTelAttribute/app/widget/id``
- ``OTelAttribute/app/widget/name``

### Artifact Attributes

- ``Tracing/SpanAttributes/ArtifactAttributes/AttestationAttributes/NestedSpanAttributes/filename``
- ``Tracing/SpanAttributes/ArtifactAttributes/AttestationAttributes/NestedSpanAttributes/hash``
- ``Tracing/SpanAttributes/ArtifactAttributes/AttestationAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/ArtifactAttributes/NestedSpanAttributes/filename``
- ``Tracing/SpanAttributes/ArtifactAttributes/NestedSpanAttributes/hash``
- ``Tracing/SpanAttributes/ArtifactAttributes/NestedSpanAttributes/purl``
- ``Tracing/SpanAttributes/ArtifactAttributes/NestedSpanAttributes/version``
- ``OTelAttribute/artifact/attestation/filename``
- ``OTelAttribute/artifact/attestation/hash``
- ``OTelAttribute/artifact/attestation/id``
- ``OTelAttribute/artifact/filename``
- ``OTelAttribute/artifact/hash``
- ``OTelAttribute/artifact/purl``
- ``OTelAttribute/artifact/version``

### General AWS Attributes

- ``Tracing/SpanAttributes/AwsAttributes/NestedSpanAttributes/extendedRequestId``
- ``Tracing/SpanAttributes/AwsAttributes/NestedSpanAttributes/requestId``
- ``OTelAttribute/aws/extendedRequestId``
- ``OTelAttribute/aws/requestId``

### Amazon Bedrock Attributes

- ``Tracing/SpanAttributes/AwsAttributes/BedrockAttributes/GuardrailAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/AwsAttributes/BedrockAttributes/KnowledgeBaseAttributes/NestedSpanAttributes/id``
- ``OTelAttribute/aws/bedrock/guardrail/id``
- ``OTelAttribute/aws/bedrock/knowledgeBase/id``

### Amazon DynamoDB Attributes

- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/attributeDefinitions``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/attributesToGet``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/consistentRead``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/consumedCapacity``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/count``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/exclusiveStartTable``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/globalSecondaryIndexUpdates``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/globalSecondaryIndexes``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/indexName``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/itemCollectionMetrics``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/limit``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/localSecondaryIndexes``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/projection``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/provisionedReadCapacity``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/provisionedWriteCapacity``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/scanForward``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/scannedCount``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/segment``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/select``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/tableCount``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/tableNames``
- ``Tracing/SpanAttributes/AwsAttributes/DynamodbAttributes/NestedSpanAttributes/totalSegments``
- ``OTelAttribute/aws/dynamodb/attributeDefinitions``
- ``OTelAttribute/aws/dynamodb/attributesToGet``
- ``OTelAttribute/aws/dynamodb/consistentRead``
- ``OTelAttribute/aws/dynamodb/consumedCapacity``
- ``OTelAttribute/aws/dynamodb/count``
- ``OTelAttribute/aws/dynamodb/exclusiveStartTable``
- ``OTelAttribute/aws/dynamodb/globalSecondaryIndexUpdates``
- ``OTelAttribute/aws/dynamodb/globalSecondaryIndexes``
- ``OTelAttribute/aws/dynamodb/indexName``
- ``OTelAttribute/aws/dynamodb/itemCollectionMetrics``
- ``OTelAttribute/aws/dynamodb/limit``
- ``OTelAttribute/aws/dynamodb/localSecondaryIndexes``
- ``OTelAttribute/aws/dynamodb/projection``
- ``OTelAttribute/aws/dynamodb/provisionedReadCapacity``
- ``OTelAttribute/aws/dynamodb/provisionedWriteCapacity``
- ``OTelAttribute/aws/dynamodb/scanForward``
- ``OTelAttribute/aws/dynamodb/scannedCount``
- ``OTelAttribute/aws/dynamodb/segment``
- ``OTelAttribute/aws/dynamodb/select``
- ``OTelAttribute/aws/dynamodb/tableCount``
- ``OTelAttribute/aws/dynamodb/tableNames``
- ``OTelAttribute/aws/dynamodb/totalSegments``

### Amazon ECS Attributes

- ``Tracing/SpanAttributes/AwsAttributes/EcsAttributes/ClusterAttributes/NestedSpanAttributes/arn``
- ``Tracing/SpanAttributes/AwsAttributes/EcsAttributes/ContainerAttributes/NestedSpanAttributes/arn``
- ``Tracing/SpanAttributes/AwsAttributes/EcsAttributes/NestedSpanAttributes/launchtype``
- ``Tracing/SpanAttributes/AwsAttributes/EcsAttributes/TaskAttributes/NestedSpanAttributes/arn``
- ``Tracing/SpanAttributes/AwsAttributes/EcsAttributes/TaskAttributes/NestedSpanAttributes/family``
- ``Tracing/SpanAttributes/AwsAttributes/EcsAttributes/TaskAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/AwsAttributes/EcsAttributes/TaskAttributes/NestedSpanAttributes/revision``
- ``OTelAttribute/aws/ecs/cluster/arn``
- ``OTelAttribute/aws/ecs/container/arn``
- ``OTelAttribute/aws/ecs/launchtype``
- ``OTelAttribute/aws/ecs/task/arn``
- ``OTelAttribute/aws/ecs/task/family``
- ``OTelAttribute/aws/ecs/task/id``
- ``OTelAttribute/aws/ecs/task/revision``

### Amazon EKS Attributes

- ``Tracing/SpanAttributes/AwsAttributes/EksAttributes/ClusterAttributes/NestedSpanAttributes/arn``
- ``OTelAttribute/aws/eks/cluster/arn``

### Amazon Kinesis Attributes

- ``Tracing/SpanAttributes/AwsAttributes/KinesisAttributes/NestedSpanAttributes/streamName``
- ``OTelAttribute/aws/kinesis/streamName``

### Amazon Lambda Attributes

- ``Tracing/SpanAttributes/AwsAttributes/LambdaAttributes/NestedSpanAttributes/invokedArn``
- ``Tracing/SpanAttributes/AwsAttributes/LambdaAttributes/ResourceMappingAttributes/NestedSpanAttributes/id``
- ``OTelAttribute/aws/lambda/invokedArn``
- ``OTelAttribute/aws/lambda/resourceMapping/id``

### Amazon Logs Attributes

- ``Tracing/SpanAttributes/AwsAttributes/LogAttributes/GroupAttributes/NestedSpanAttributes/arns``
- ``Tracing/SpanAttributes/AwsAttributes/LogAttributes/GroupAttributes/NestedSpanAttributes/names``
- ``Tracing/SpanAttributes/AwsAttributes/LogAttributes/StreamAttributes/NestedSpanAttributes/arns``
- ``Tracing/SpanAttributes/AwsAttributes/LogAttributes/StreamAttributes/NestedSpanAttributes/names``
- ``OTelAttribute/aws/log/group/arns``
- ``OTelAttribute/aws/log/group/names``
- ``OTelAttribute/aws/log/stream/arns``
- ``OTelAttribute/aws/log/stream/names``

### Amazon S3 Attributes

- ``Tracing/SpanAttributes/AwsAttributes/S3Attributes/NestedSpanAttributes/bucket``
- ``Tracing/SpanAttributes/AwsAttributes/S3Attributes/NestedSpanAttributes/copySource``
- ``Tracing/SpanAttributes/AwsAttributes/S3Attributes/NestedSpanAttributes/delete``
- ``Tracing/SpanAttributes/AwsAttributes/S3Attributes/NestedSpanAttributes/key``
- ``Tracing/SpanAttributes/AwsAttributes/S3Attributes/NestedSpanAttributes/partNumber``
- ``Tracing/SpanAttributes/AwsAttributes/S3Attributes/NestedSpanAttributes/uploadId``
- ``OTelAttribute/aws/s3/bucket``
- ``OTelAttribute/aws/s3/copySource``
- ``OTelAttribute/aws/s3/delete``
- ``OTelAttribute/aws/s3/key``
- ``OTelAttribute/aws/s3/partNumber``
- ``OTelAttribute/aws/s3/uploadId``

### Amazon Secrets Manager Attributes

- ``Tracing/SpanAttributes/AwsAttributes/SecretsmanagerAttributes/SecretAttributes/NestedSpanAttributes/arn``
- ``OTelAttribute/aws/secretsmanager/secret/arn``

### Amazon SNS Attributes

- ``Tracing/SpanAttributes/AwsAttributes/SnsAttributes/TopicAttributes/NestedSpanAttributes/arn``
- ``OTelAttribute/aws/sns/topic/arn``

### Amazon SQS Attributes

- ``Tracing/SpanAttributes/AwsAttributes/SqsAttributes/QueueAttributes/NestedSpanAttributes/url``
- ``OTelAttribute/aws/sqs/queue/url``

### Amazon Step Functions Attributes

- ``Tracing/SpanAttributes/AwsAttributes/StepFunctionsAttributes/ActivityAttributes/NestedSpanAttributes/arn``
- ``Tracing/SpanAttributes/AwsAttributes/StepFunctionsAttributes/StateMachineAttributes/NestedSpanAttributes/arn``
- ``OTelAttribute/aws/stepFunctions/activity/arn``
- ``OTelAttribute/aws/stepFunctions/stateMachine/arn``

### Azure Client Library Attributes

- ``Tracing/SpanAttributes/AzureAttributes/ClientAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/AzureAttributes/ResourceProviderAttributes/NestedSpanAttributes/namespace``
- ``Tracing/SpanAttributes/AzureAttributes/ServiceAttributes/RequestAttributes/NestedSpanAttributes/id``
- ``OTelAttribute/azure/client/id``
- ``OTelAttribute/azure/resourceProvider/namespace``
- ``OTelAttribute/azure/service/request/id``

### Azure Cosmos DB Attributes

- ``Tracing/SpanAttributes/AzureAttributes/CosmosdbAttributes/ConnectionAttributes/NestedSpanAttributes/mode``
- ``Tracing/SpanAttributes/AzureAttributes/CosmosdbAttributes/ConsistencyAttributes/NestedSpanAttributes/level``
- ``Tracing/SpanAttributes/AzureAttributes/CosmosdbAttributes/OperationAttributes/NestedSpanAttributes/contactedRegions``
- ``Tracing/SpanAttributes/AzureAttributes/CosmosdbAttributes/OperationAttributes/NestedSpanAttributes/requestCharge``
- ``Tracing/SpanAttributes/AzureAttributes/CosmosdbAttributes/RequestAttributes/BodyAttributes/NestedSpanAttributes/size``
- ``Tracing/SpanAttributes/AzureAttributes/CosmosdbAttributes/ResponseAttributes/NestedSpanAttributes/subStatusCode``
- ``OTelAttribute/azure/cosmosdb/connection/mode``
- ``OTelAttribute/azure/cosmosdb/consistency/level``
- ``OTelAttribute/azure/cosmosdb/operation/contactedRegions``
- ``OTelAttribute/azure/cosmosdb/operation/requestCharge``
- ``OTelAttribute/azure/cosmosdb/request/body/size``
- ``OTelAttribute/azure/cosmosdb/response/subStatusCode``

### Deprecated Azure Attributes

- ``Tracing/SpanAttributes/AzAttributes/NestedSpanAttributes/namespace``
- ``Tracing/SpanAttributes/AzAttributes/NestedSpanAttributes/serviceRequestId``
- ``OTelAttribute/az/namespace``
- ``OTelAttribute/az/serviceRequestId``

### Browser Attributes

- ``Tracing/SpanAttributes/BrowserAttributes/NestedSpanAttributes/brands``
- ``Tracing/SpanAttributes/BrowserAttributes/NestedSpanAttributes/language``
- ``Tracing/SpanAttributes/BrowserAttributes/NestedSpanAttributes/mobile``
- ``Tracing/SpanAttributes/BrowserAttributes/NestedSpanAttributes/platform``
- ``OTelAttribute/browser/brands``
- ``OTelAttribute/browser/language``
- ``OTelAttribute/browser/mobile``
- ``OTelAttribute/browser/platform``

### Cassandra Attributes

- ``Tracing/SpanAttributes/CassandraAttributes/ConsistencyAttributes/NestedSpanAttributes/level``
- ``Tracing/SpanAttributes/CassandraAttributes/CoordinatorAttributes/NestedSpanAttributes/dc``
- ``Tracing/SpanAttributes/CassandraAttributes/CoordinatorAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/CassandraAttributes/PageAttributes/NestedSpanAttributes/size``
- ``Tracing/SpanAttributes/CassandraAttributes/QueryAttributes/NestedSpanAttributes/idempotent``
- ``Tracing/SpanAttributes/CassandraAttributes/SpeculativeExecutionAttributes/NestedSpanAttributes/count``
- ``OTelAttribute/cassandra/consistency/level``
- ``OTelAttribute/cassandra/coordinator/dc``
- ``OTelAttribute/cassandra/coordinator/id``
- ``OTelAttribute/cassandra/page/size``
- ``OTelAttribute/cassandra/query/idempotent``
- ``OTelAttribute/cassandra/speculativeExecution/count``

### CI/CD Pipeline Attributes

- ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/ActionAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/NestedSpanAttributes/result``
- ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/RunAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/RunAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/RunAttributes/UrlAttributes/NestedSpanAttributes/full``
- ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/TaskAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/TaskAttributes/RunAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/TaskAttributes/RunAttributes/NestedSpanAttributes/result``
- ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/TaskAttributes/RunAttributes/UrlAttributes/NestedSpanAttributes/full``
- ``Tracing/SpanAttributes/CicdAttributes/PipelineAttributes/TaskAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/CicdAttributes/SystemAttributes/NestedSpanAttributes/component``
- ``Tracing/SpanAttributes/CicdAttributes/WorkerAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/CicdAttributes/WorkerAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/CicdAttributes/WorkerAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/CicdAttributes/WorkerAttributes/UrlAttributes/NestedSpanAttributes/full``
- ``OTelAttribute/cicd/pipeline/action/name``
- ``OTelAttribute/cicd/pipeline/name``
- ``OTelAttribute/cicd/pipeline/result``
- ``OTelAttribute/cicd/pipeline/run/id``
- ``OTelAttribute/cicd/pipeline/run/state``
- ``OTelAttribute/cicd/pipeline/run/url/full``
- ``OTelAttribute/cicd/pipeline/task/name``
- ``OTelAttribute/cicd/pipeline/task/run/id``
- ``OTelAttribute/cicd/pipeline/task/run/result``
- ``OTelAttribute/cicd/pipeline/task/run/url/full``
- ``OTelAttribute/cicd/pipeline/task/type``
- ``OTelAttribute/cicd/system/component``
- ``OTelAttribute/cicd/worker/id``
- ``OTelAttribute/cicd/worker/name``
- ``OTelAttribute/cicd/worker/state``
- ``OTelAttribute/cicd/worker/url/full``

### Client Attributes

- ``Tracing/SpanAttributes/ClientAttributes/NestedSpanAttributes/address``
- ``Tracing/SpanAttributes/ClientAttributes/NestedSpanAttributes/port``
- ``OTelAttribute/client/address``
- ``OTelAttribute/client/port``

### Cloud Attributes

- ``Tracing/SpanAttributes/CloudAttributes/AccountAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/CloudAttributes/NestedSpanAttributes/availabilityZone``
- ``Tracing/SpanAttributes/CloudAttributes/NestedSpanAttributes/platform``
- ``Tracing/SpanAttributes/CloudAttributes/NestedSpanAttributes/provider``
- ``Tracing/SpanAttributes/CloudAttributes/NestedSpanAttributes/region``
- ``Tracing/SpanAttributes/CloudAttributes/NestedSpanAttributes/resourceId``
- ``OTelAttribute/cloud/account/id``
- ``OTelAttribute/cloud/availabilityZone``
- ``OTelAttribute/cloud/platform``
- ``OTelAttribute/cloud/provider``
- ``OTelAttribute/cloud/region``
- ``OTelAttribute/cloud/resourceId``

### CloudEvents Attributes

- ``Tracing/SpanAttributes/CloudeventsAttributes/NestedSpanAttributes/eventId``
- ``Tracing/SpanAttributes/CloudeventsAttributes/NestedSpanAttributes/eventSource``
- ``Tracing/SpanAttributes/CloudeventsAttributes/NestedSpanAttributes/eventSpecVersion``
- ``Tracing/SpanAttributes/CloudeventsAttributes/NestedSpanAttributes/eventSubject``
- ``Tracing/SpanAttributes/CloudeventsAttributes/NestedSpanAttributes/eventType``
- ``OTelAttribute/cloudevents/eventId``
- ``OTelAttribute/cloudevents/eventSource``
- ``OTelAttribute/cloudevents/eventSpecVersion``
- ``OTelAttribute/cloudevents/eventSubject``
- ``OTelAttribute/cloudevents/eventType``

### CloudFoundry Attributes

- ``Tracing/SpanAttributes/CloudfoundryAttributes/AppAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/CloudfoundryAttributes/AppAttributes/InstanceAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/CloudfoundryAttributes/AppAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/CloudfoundryAttributes/OrgAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/CloudfoundryAttributes/OrgAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/CloudfoundryAttributes/ProcessAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/CloudfoundryAttributes/ProcessAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/CloudfoundryAttributes/SpaceAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/CloudfoundryAttributes/SpaceAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/CloudfoundryAttributes/SystemAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/CloudfoundryAttributes/SystemAttributes/InstanceAttributes/NestedSpanAttributes/id``
- ``OTelAttribute/cloudfoundry/app/id``
- ``OTelAttribute/cloudfoundry/app/instance/id``
- ``OTelAttribute/cloudfoundry/app/name``
- ``OTelAttribute/cloudfoundry/org/id``
- ``OTelAttribute/cloudfoundry/org/name``
- ``OTelAttribute/cloudfoundry/process/id``
- ``OTelAttribute/cloudfoundry/process/type``
- ``OTelAttribute/cloudfoundry/space/id``
- ``OTelAttribute/cloudfoundry/space/name``
- ``OTelAttribute/cloudfoundry/system/id``
- ``OTelAttribute/cloudfoundry/system/instance/id``

### Code Attributes

- ``Tracing/SpanAttributes/CodeAttributes/ColumnAttributes/NestedSpanAttributes/number``
- ``Tracing/SpanAttributes/CodeAttributes/FileAttributes/NestedSpanAttributes/path``
- ``Tracing/SpanAttributes/CodeAttributes/FunctionAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/CodeAttributes/LineAttributes/NestedSpanAttributes/number``
- ``Tracing/SpanAttributes/CodeAttributes/NestedSpanAttributes/stacktrace``
- ``OTelAttribute/code/column/number``
- ``OTelAttribute/code/file/path``
- ``OTelAttribute/code/function/name``
- ``OTelAttribute/code/line/number``
- ``OTelAttribute/code/stacktrace``

### Deprecated Code Attributes

- ``Tracing/SpanAttributes/CodeAttributes/NestedSpanAttributes/_column``
- ``Tracing/SpanAttributes/CodeAttributes/NestedSpanAttributes/filepath``
- ``Tracing/SpanAttributes/CodeAttributes/NestedSpanAttributes/_function``
- ``Tracing/SpanAttributes/CodeAttributes/NestedSpanAttributes/lineno``
- ``Tracing/SpanAttributes/CodeAttributes/NestedSpanAttributes/namespace``
- ``OTelAttribute/code/_column``
- ``OTelAttribute/code/filepath``
- ``OTelAttribute/code/_function``
- ``OTelAttribute/code/lineno``
- ``OTelAttribute/code/namespace``

### Container Attributes

- ``Tracing/SpanAttributes/ContainerAttributes/NestedSpanAttributes/command``
- ``Tracing/SpanAttributes/ContainerAttributes/NestedSpanAttributes/commandArgs``
- ``Tracing/SpanAttributes/ContainerAttributes/NestedSpanAttributes/commandLine``
- ``Tracing/SpanAttributes/ContainerAttributes/CsiAttributes/PluginAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/ContainerAttributes/CsiAttributes/VolumeAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/ContainerAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/ContainerAttributes/ImageAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/ContainerAttributes/ImageAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/ContainerAttributes/ImageAttributes/NestedSpanAttributes/repoDigests``
- ``Tracing/SpanAttributes/ContainerAttributes/ImageAttributes/NestedSpanAttributes/tags``
- ``Tracing/SpanAttributes/ContainerAttributes/label``
- ``Tracing/SpanAttributes/ContainerAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/ContainerAttributes/RuntimeAttributes/NestedSpanAttributes/description``
- ``Tracing/SpanAttributes/ContainerAttributes/RuntimeAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/ContainerAttributes/RuntimeAttributes/NestedSpanAttributes/version``
- ``OTelAttribute/container/command``
- ``OTelAttribute/container/commandArgs``
- ``OTelAttribute/container/commandLine``
- ``OTelAttribute/container/csi/plugin/name``
- ``OTelAttribute/container/csi/volume/id``
- ``OTelAttribute/container/id``
- ``OTelAttribute/container/image/id``
- ``OTelAttribute/container/image/name``
- ``OTelAttribute/container/image/repoDigests``
- ``OTelAttribute/container/image/tags``
- ``OTelAttribute/container/label``
- ``OTelAttribute/container/name``
- ``OTelAttribute/container/runtime/description``
- ``OTelAttribute/container/runtime/name``
- ``OTelAttribute/container/runtime/version``

### Deprecated Container Attributes

- ``Tracing/SpanAttributes/ContainerAttributes/CpuAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/ContainerAttributes/labels``
- ``Tracing/SpanAttributes/ContainerAttributes/NestedSpanAttributes/_runtime``
- ``OTelAttribute/container/cpu/state``
- ``OTelAttribute/container/labels``
- ``OTelAttribute/container/_runtime``

### CPU Attributes

- ``Tracing/SpanAttributes/CpuAttributes/NestedSpanAttributes/logicalNumber``
- ``Tracing/SpanAttributes/CpuAttributes/NestedSpanAttributes/mode``
- ``OTelAttribute/cpu/logicalNumber``
- ``OTelAttribute/cpu/mode``

### CPython attributes

- ``Tracing/SpanAttributes/CpythonAttributes/GcAttributes/NestedSpanAttributes/generation``
- ``OTelAttribute/cpython/gc/generation``

### General Database Attributes

- ``Tracing/SpanAttributes/DbAttributes/ClientAttributes/ConnectionAttributes/PoolAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/DbAttributes/ClientAttributes/ConnectionAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/DbAttributes/CollectionAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/DbAttributes/NestedSpanAttributes/namespace``
- ``Tracing/SpanAttributes/DbAttributes/OperationAttributes/BatchAttributes/NestedSpanAttributes/size``
- ``Tracing/SpanAttributes/DbAttributes/OperationAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/DbAttributes/OperationAttributes/parameter``
- ``Tracing/SpanAttributes/DbAttributes/QueryAttributes/parameter``
- ``Tracing/SpanAttributes/DbAttributes/QueryAttributes/NestedSpanAttributes/summary``
- ``Tracing/SpanAttributes/DbAttributes/QueryAttributes/NestedSpanAttributes/text``
- ``Tracing/SpanAttributes/DbAttributes/ResponseAttributes/NestedSpanAttributes/returnedRows``
- ``Tracing/SpanAttributes/DbAttributes/ResponseAttributes/NestedSpanAttributes/statusCode``
- ``Tracing/SpanAttributes/DbAttributes/StoredProcedureAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/DbAttributes/SystemAttributes/NestedSpanAttributes/name``
- ``OTelAttribute/db/client/connection/pool/name``
- ``OTelAttribute/db/client/connection/state``
- ``OTelAttribute/db/collection/name``
- ``OTelAttribute/db/namespace``
- ``OTelAttribute/db/operation/batch/size``
- ``OTelAttribute/db/operation/name``
- ``OTelAttribute/db/operation/parameter``
- ``OTelAttribute/db/query/parameter``
- ``OTelAttribute/db/query/summary``
- ``OTelAttribute/db/query/text``
- ``OTelAttribute/db/response/returnedRows``
- ``OTelAttribute/db/response/statusCode``
- ``OTelAttribute/db/storedProcedure/name``
- ``OTelAttribute/db/system/name``

### Deprecated Database Attributes

- ``Tracing/SpanAttributes/DbAttributes/CassandraAttributes/NestedSpanAttributes/consistencyLevel``
- ``Tracing/SpanAttributes/DbAttributes/CassandraAttributes/CoordinatorAttributes/NestedSpanAttributes/dc``
- ``Tracing/SpanAttributes/DbAttributes/CassandraAttributes/CoordinatorAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/DbAttributes/CassandraAttributes/NestedSpanAttributes/idempotence``
- ``Tracing/SpanAttributes/DbAttributes/CassandraAttributes/NestedSpanAttributes/pageSize``
- ``Tracing/SpanAttributes/DbAttributes/CassandraAttributes/NestedSpanAttributes/speculativeExecutionCount``
- ``Tracing/SpanAttributes/DbAttributes/CassandraAttributes/NestedSpanAttributes/table``
- ``Tracing/SpanAttributes/DbAttributes/NestedSpanAttributes/connectionString``
- ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/clientId``
- ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/connectionMode``
- ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/consistencyLevel``
- ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/container``
- ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/operationType``
- ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/regionsContacted``
- ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/requestCharge``
- ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/requestContentLength``
- ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/statusCode``
- ``Tracing/SpanAttributes/DbAttributes/CosmosdbAttributes/NestedSpanAttributes/subStatusCode``
- ``Tracing/SpanAttributes/DbAttributes/ElasticsearchAttributes/ClusterAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/DbAttributes/ElasticsearchAttributes/NodeAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/DbAttributes/ElasticsearchAttributes/pathParts``
- ``Tracing/SpanAttributes/DbAttributes/InstanceAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/DbAttributes/JdbcAttributes/NestedSpanAttributes/driverClassname``
- ``Tracing/SpanAttributes/DbAttributes/MongodbAttributes/NestedSpanAttributes/collection``
- ``Tracing/SpanAttributes/DbAttributes/MssqlAttributes/NestedSpanAttributes/instanceName``
- ``Tracing/SpanAttributes/DbAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/DbAttributes/NestedSpanAttributes/_operation``
- ``Tracing/SpanAttributes/DbAttributes/RedisAttributes/NestedSpanAttributes/databaseIndex``
- ``Tracing/SpanAttributes/DbAttributes/SqlAttributes/NestedSpanAttributes/table``
- ``Tracing/SpanAttributes/DbAttributes/NestedSpanAttributes/statement``
- ``Tracing/SpanAttributes/DbAttributes/NestedSpanAttributes/_system``
- ``Tracing/SpanAttributes/DbAttributes/NestedSpanAttributes/user``
- ``OTelAttribute/db/cassandra/consistencyLevel``
- ``OTelAttribute/db/cassandra/coordinator/dc``
- ``OTelAttribute/db/cassandra/coordinator/id``
- ``OTelAttribute/db/cassandra/idempotence``
- ``OTelAttribute/db/cassandra/pageSize``
- ``OTelAttribute/db/cassandra/speculativeExecutionCount``
- ``OTelAttribute/db/cassandra/table``
- ``OTelAttribute/db/connectionString``
- ``OTelAttribute/db/cosmosdb/clientId``
- ``OTelAttribute/db/cosmosdb/connectionMode``
- ``OTelAttribute/db/cosmosdb/consistencyLevel``
- ``OTelAttribute/db/cosmosdb/container``
- ``OTelAttribute/db/cosmosdb/operationType``
- ``OTelAttribute/db/cosmosdb/regionsContacted``
- ``OTelAttribute/db/cosmosdb/requestCharge``
- ``OTelAttribute/db/cosmosdb/requestContentLength``
- ``OTelAttribute/db/cosmosdb/statusCode``
- ``OTelAttribute/db/cosmosdb/subStatusCode``
- ``OTelAttribute/db/elasticsearch/cluster/name``
- ``OTelAttribute/db/elasticsearch/node/name``
- ``OTelAttribute/db/elasticsearch/pathParts``
- ``OTelAttribute/db/instance/id``
- ``OTelAttribute/db/jdbc/driverClassname``
- ``OTelAttribute/db/mongodb/collection``
- ``OTelAttribute/db/mssql/instanceName``
- ``OTelAttribute/db/name``
- ``OTelAttribute/db/_operation``
- ``OTelAttribute/db/redis/databaseIndex``
- ``OTelAttribute/db/sql/table``
- ``OTelAttribute/db/statement``
- ``OTelAttribute/db/_system``
- ``OTelAttribute/db/user``

### Deprecated Database Metrics

- ``Tracing/SpanAttributes/DbAttributes/ClientAttributes/ConnectionsAttributes/PoolAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/DbAttributes/ClientAttributes/ConnectionsAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/PoolAttributes/NestedSpanAttributes/name``
- ``OTelAttribute/db/client/connections/pool/name``
- ``OTelAttribute/db/client/connections/state``
- ``OTelAttribute/pool/name``

### Deployment Attributes

- ``Tracing/SpanAttributes/DeploymentAttributes/EnvironmentAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/DeploymentAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/DeploymentAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/DeploymentAttributes/NestedSpanAttributes/status``
- ``OTelAttribute/deployment/environment/name``
- ``OTelAttribute/deployment/id``
- ``OTelAttribute/deployment/name``
- ``OTelAttribute/deployment/status``

### registry.deployment.deprecated

- ``Tracing/SpanAttributes/DeploymentAttributes/NestedSpanAttributes/_environment``
- ``OTelAttribute/deployment/_environment``

### Destination Attributes

- ``Tracing/SpanAttributes/DestinationAttributes/NestedSpanAttributes/address``
- ``Tracing/SpanAttributes/DestinationAttributes/NestedSpanAttributes/port``
- ``OTelAttribute/destination/address``
- ``OTelAttribute/destination/port``

### Device Attributes

- ``Tracing/SpanAttributes/DeviceAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/DeviceAttributes/NestedSpanAttributes/manufacturer``
- ``Tracing/SpanAttributes/DeviceAttributes/ModelAttributes/NestedSpanAttributes/identifier``
- ``Tracing/SpanAttributes/DeviceAttributes/ModelAttributes/NestedSpanAttributes/name``
- ``OTelAttribute/device/id``
- ``OTelAttribute/device/manufacturer``
- ``OTelAttribute/device/model/identifier``
- ``OTelAttribute/device/model/name``

### Disk Attributes

- ``Tracing/SpanAttributes/DiskAttributes/IoAttributes/NestedSpanAttributes/direction``
- ``OTelAttribute/disk/io/direction``

### DNS Attributes

- ``Tracing/SpanAttributes/DnsAttributes/NestedSpanAttributes/answers``
- ``Tracing/SpanAttributes/DnsAttributes/QuestionAttributes/NestedSpanAttributes/name``
- ``OTelAttribute/dns/answers``
- ``OTelAttribute/dns/question/name``

### Elasticsearch Attributes

- ``Tracing/SpanAttributes/ElasticsearchAttributes/NodeAttributes/NestedSpanAttributes/name``
- ``OTelAttribute/elasticsearch/node/name``

### End User Attributes

- ``Tracing/SpanAttributes/EnduserAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/EnduserAttributes/PseudoAttributes/NestedSpanAttributes/id``
- ``OTelAttribute/enduser/id``
- ``OTelAttribute/enduser/pseudo/id``

### Deprecated End User Attributes

- ``Tracing/SpanAttributes/EnduserAttributes/NestedSpanAttributes/role``
- ``Tracing/SpanAttributes/EnduserAttributes/NestedSpanAttributes/scope``
- ``OTelAttribute/enduser/role``
- ``OTelAttribute/enduser/scope``

### Error Attributes

- ``Tracing/SpanAttributes/ErrorAttributes/NestedSpanAttributes/message``
- ``Tracing/SpanAttributes/ErrorAttributes/NestedSpanAttributes/type``
- ``OTelAttribute/error/message``
- ``OTelAttribute/error/type``

### Event Attributes

- ``Tracing/SpanAttributes/EventAttributes/NestedSpanAttributes/name``
- ``OTelAttribute/event/name``

### Exception Attributes

- ``Tracing/SpanAttributes/ExceptionAttributes/NestedSpanAttributes/message``
- ``Tracing/SpanAttributes/ExceptionAttributes/NestedSpanAttributes/stacktrace``
- ``Tracing/SpanAttributes/ExceptionAttributes/NestedSpanAttributes/type``
- ``OTelAttribute/exception/message``
- ``OTelAttribute/exception/stacktrace``
- ``OTelAttribute/exception/type``

### Deprecated Exception Attributes

- ``Tracing/SpanAttributes/ExceptionAttributes/NestedSpanAttributes/escaped``
- ``OTelAttribute/exception/escaped``

### Function as a Service Attributes

- ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/coldstart``
- ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/cron``
- ``Tracing/SpanAttributes/FaasAttributes/DocumentAttributes/NestedSpanAttributes/collection``
- ``Tracing/SpanAttributes/FaasAttributes/DocumentAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/FaasAttributes/DocumentAttributes/NestedSpanAttributes/operation``
- ``Tracing/SpanAttributes/FaasAttributes/DocumentAttributes/NestedSpanAttributes/time``
- ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/instance``
- ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/invocationId``
- ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/invokedName``
- ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/invokedProvider``
- ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/invokedRegion``
- ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/maxMemory``
- ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/time``
- ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/trigger``
- ``Tracing/SpanAttributes/FaasAttributes/NestedSpanAttributes/version``
- ``OTelAttribute/faas/coldstart``
- ``OTelAttribute/faas/cron``
- ``OTelAttribute/faas/document/collection``
- ``OTelAttribute/faas/document/name``
- ``OTelAttribute/faas/document/operation``
- ``OTelAttribute/faas/document/time``
- ``OTelAttribute/faas/instance``
- ``OTelAttribute/faas/invocationId``
- ``OTelAttribute/faas/invokedName``
- ``OTelAttribute/faas/invokedProvider``
- ``OTelAttribute/faas/invokedRegion``
- ``OTelAttribute/faas/maxMemory``
- ``OTelAttribute/faas/name``
- ``OTelAttribute/faas/time``
- ``OTelAttribute/faas/trigger``
- ``OTelAttribute/faas/version``

### Feature Flag Attributes

- ``Tracing/SpanAttributes/FeatureFlagAttributes/ContextAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/FeatureFlagAttributes/NestedSpanAttributes/key``
- ``Tracing/SpanAttributes/FeatureFlagAttributes/ProviderAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/FeatureFlagAttributes/ResultAttributes/NestedSpanAttributes/reason``
- ``Tracing/SpanAttributes/FeatureFlagAttributes/ResultAttributes/NestedSpanAttributes/value``
- ``Tracing/SpanAttributes/FeatureFlagAttributes/ResultAttributes/NestedSpanAttributes/variant``
- ``Tracing/SpanAttributes/FeatureFlagAttributes/SetAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/FeatureFlagAttributes/NestedSpanAttributes/version``
- ``OTelAttribute/featureFlag/context/id``
- ``OTelAttribute/featureFlag/key``
- ``OTelAttribute/featureFlag/provider/name``
- ``OTelAttribute/featureFlag/result/reason``
- ``OTelAttribute/featureFlag/result/value``
- ``OTelAttribute/featureFlag/result/variant``
- ``OTelAttribute/featureFlag/set/id``
- ``OTelAttribute/featureFlag/version``

### Deprecated Feature Flag Attributes

- ``Tracing/SpanAttributes/FeatureFlagAttributes/EvaluationAttributes/ErrorAttributes/NestedSpanAttributes/message``
- ``Tracing/SpanAttributes/FeatureFlagAttributes/EvaluationAttributes/NestedSpanAttributes/reason``
- ``Tracing/SpanAttributes/FeatureFlagAttributes/NestedSpanAttributes/providerName``
- ``Tracing/SpanAttributes/FeatureFlagAttributes/NestedSpanAttributes/variant``
- ``OTelAttribute/featureFlag/evaluation/error/message``
- ``OTelAttribute/featureFlag/evaluation/reason``
- ``OTelAttribute/featureFlag/providerName``
- ``OTelAttribute/featureFlag/variant``

### File Attributes

- ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/accessed``
- ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/attributes``
- ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/changed``
- ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/created``
- ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/directory``
- ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/extension``
- ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/forkName``
- ``Tracing/SpanAttributes/FileAttributes/GroupAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/FileAttributes/GroupAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/inode``
- ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/mode``
- ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/modified``
- ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/FileAttributes/OwnerAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/FileAttributes/OwnerAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/path``
- ``Tracing/SpanAttributes/FileAttributes/NestedSpanAttributes/size``
- ``Tracing/SpanAttributes/FileAttributes/SymbolicLinkAttributes/NestedSpanAttributes/targetPath``
- ``OTelAttribute/file/accessed``
- ``OTelAttribute/file/attributes``
- ``OTelAttribute/file/changed``
- ``OTelAttribute/file/created``
- ``OTelAttribute/file/directory``
- ``OTelAttribute/file/extension``
- ``OTelAttribute/file/forkName``
- ``OTelAttribute/file/group/id``
- ``OTelAttribute/file/group/name``
- ``OTelAttribute/file/inode``
- ``OTelAttribute/file/mode``
- ``OTelAttribute/file/modified``
- ``OTelAttribute/file/name``
- ``OTelAttribute/file/owner/id``
- ``OTelAttribute/file/owner/name``
- ``OTelAttribute/file/path``
- ``OTelAttribute/file/size``
- ``OTelAttribute/file/symbolicLink/targetPath``

### GCP - AppHub Attributes

- ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/ApplicationAttributes/NestedSpanAttributes/container``
- ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/ApplicationAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/ApplicationAttributes/NestedSpanAttributes/location``
- ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/ServiceAttributes/NestedSpanAttributes/criticalityType``
- ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/ServiceAttributes/NestedSpanAttributes/environmentType``
- ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/ServiceAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/WorkloadAttributes/NestedSpanAttributes/criticalityType``
- ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/WorkloadAttributes/NestedSpanAttributes/environmentType``
- ``Tracing/SpanAttributes/GcpAttributes/ApphubAttributes/WorkloadAttributes/NestedSpanAttributes/id``
- ``OTelAttribute/gcp/apphub/application/container``
- ``OTelAttribute/gcp/apphub/application/id``
- ``OTelAttribute/gcp/apphub/application/location``
- ``OTelAttribute/gcp/apphub/service/criticalityType``
- ``OTelAttribute/gcp/apphub/service/environmentType``
- ``OTelAttribute/gcp/apphub/service/id``
- ``OTelAttribute/gcp/apphub/workload/criticalityType``
- ``OTelAttribute/gcp/apphub/workload/environmentType``
- ``OTelAttribute/gcp/apphub/workload/id``

### GCP - AppHub Destination Attributes

- ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/ApplicationAttributes/NestedSpanAttributes/container``
- ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/ApplicationAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/ApplicationAttributes/NestedSpanAttributes/location``
- ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/ServiceAttributes/NestedSpanAttributes/criticalityType``
- ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/ServiceAttributes/NestedSpanAttributes/environmentType``
- ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/ServiceAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/WorkloadAttributes/NestedSpanAttributes/criticalityType``
- ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/WorkloadAttributes/NestedSpanAttributes/environmentType``
- ``Tracing/SpanAttributes/GcpAttributes/ApphubDestinationAttributes/WorkloadAttributes/NestedSpanAttributes/id``
- ``OTelAttribute/gcp/apphubDestination/application/container``
- ``OTelAttribute/gcp/apphubDestination/application/id``
- ``OTelAttribute/gcp/apphubDestination/application/location``
- ``OTelAttribute/gcp/apphubDestination/service/criticalityType``
- ``OTelAttribute/gcp/apphubDestination/service/environmentType``
- ``OTelAttribute/gcp/apphubDestination/service/id``
- ``OTelAttribute/gcp/apphubDestination/workload/criticalityType``
- ``OTelAttribute/gcp/apphubDestination/workload/environmentType``
- ``OTelAttribute/gcp/apphubDestination/workload/id``

### GCP Client Attributes

- ``Tracing/SpanAttributes/GcpAttributes/ClientAttributes/NestedSpanAttributes/service``
- ``OTelAttribute/gcp/client/service``

### GCP - Google Cloud Run Attributes

- ``Tracing/SpanAttributes/GcpAttributes/CloudRunAttributes/JobAttributes/NestedSpanAttributes/execution``
- ``Tracing/SpanAttributes/GcpAttributes/CloudRunAttributes/JobAttributes/NestedSpanAttributes/taskIndex``
- ``OTelAttribute/gcp/cloudRun/job/execution``
- ``OTelAttribute/gcp/cloudRun/job/taskIndex``

### GCP - Google Compute Engine (GCE) Attributes

- ``Tracing/SpanAttributes/GcpAttributes/GceAttributes/InstanceAttributes/NestedSpanAttributes/hostname``
- ``Tracing/SpanAttributes/GcpAttributes/GceAttributes/InstanceAttributes/NestedSpanAttributes/name``
- ``OTelAttribute/gcp/gce/instance/hostname``
- ``OTelAttribute/gcp/gce/instance/name``

### GenAI Attributes

- ``Tracing/SpanAttributes/GenAiAttributes/AgentAttributes/NestedSpanAttributes/description``
- ``Tracing/SpanAttributes/GenAiAttributes/AgentAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/GenAiAttributes/AgentAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/GenAiAttributes/ConversationAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/GenAiAttributes/DataSourceAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/GenAiAttributes/EmbeddingsAttributes/DimensionAttributes/NestedSpanAttributes/count``
- ``Tracing/SpanAttributes/GenAiAttributes/EvaluationAttributes/NestedSpanAttributes/explanation``
- ``Tracing/SpanAttributes/GenAiAttributes/EvaluationAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/GenAiAttributes/EvaluationAttributes/ScoreAttributes/NestedSpanAttributes/label``
- ``Tracing/SpanAttributes/GenAiAttributes/EvaluationAttributes/ScoreAttributes/NestedSpanAttributes/value``
- ``Tracing/SpanAttributes/GenAiAttributes/InputAttributes/NestedSpanAttributes/messages``
- ``Tracing/SpanAttributes/GenAiAttributes/OperationAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/GenAiAttributes/OutputAttributes/NestedSpanAttributes/messages``
- ``Tracing/SpanAttributes/GenAiAttributes/OutputAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/GenAiAttributes/ProviderAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/ChoiceAttributes/NestedSpanAttributes/count``
- ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/encodingFormats``
- ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/frequencyPenalty``
- ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/maxTokens``
- ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/model``
- ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/presencePenalty``
- ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/seed``
- ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/stopSequences``
- ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/temperature``
- ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/topK``
- ``Tracing/SpanAttributes/GenAiAttributes/RequestAttributes/NestedSpanAttributes/topP``
- ``Tracing/SpanAttributes/GenAiAttributes/ResponseAttributes/NestedSpanAttributes/finishReasons``
- ``Tracing/SpanAttributes/GenAiAttributes/ResponseAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/GenAiAttributes/ResponseAttributes/NestedSpanAttributes/model``
- ``Tracing/SpanAttributes/GenAiAttributes/NestedSpanAttributes/systemInstructions``
- ``Tracing/SpanAttributes/GenAiAttributes/TokenAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/GenAiAttributes/ToolAttributes/CallAttributes/NestedSpanAttributes/arguments``
- ``Tracing/SpanAttributes/GenAiAttributes/ToolAttributes/CallAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/GenAiAttributes/ToolAttributes/CallAttributes/NestedSpanAttributes/result``
- ``Tracing/SpanAttributes/GenAiAttributes/ToolAttributes/NestedSpanAttributes/definitions``
- ``Tracing/SpanAttributes/GenAiAttributes/ToolAttributes/NestedSpanAttributes/description``
- ``Tracing/SpanAttributes/GenAiAttributes/ToolAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/GenAiAttributes/ToolAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/GenAiAttributes/UsageAttributes/NestedSpanAttributes/inputTokens``
- ``Tracing/SpanAttributes/GenAiAttributes/UsageAttributes/NestedSpanAttributes/outputTokens``
- ``OTelAttribute/genAi/agent/description``
- ``OTelAttribute/genAi/agent/id``
- ``OTelAttribute/genAi/agent/name``
- ``OTelAttribute/genAi/conversation/id``
- ``OTelAttribute/genAi/dataSource/id``
- ``OTelAttribute/genAi/embeddings/dimension/count``
- ``OTelAttribute/genAi/evaluation/explanation``
- ``OTelAttribute/genAi/evaluation/name``
- ``OTelAttribute/genAi/evaluation/score/label``
- ``OTelAttribute/genAi/evaluation/score/value``
- ``OTelAttribute/genAi/input/messages``
- ``OTelAttribute/genAi/operation/name``
- ``OTelAttribute/genAi/output/messages``
- ``OTelAttribute/genAi/output/type``
- ``OTelAttribute/genAi/provider/name``
- ``OTelAttribute/genAi/request/choice/count``
- ``OTelAttribute/genAi/request/encodingFormats``
- ``OTelAttribute/genAi/request/frequencyPenalty``
- ``OTelAttribute/genAi/request/maxTokens``
- ``OTelAttribute/genAi/request/model``
- ``OTelAttribute/genAi/request/presencePenalty``
- ``OTelAttribute/genAi/request/seed``
- ``OTelAttribute/genAi/request/stopSequences``
- ``OTelAttribute/genAi/request/temperature``
- ``OTelAttribute/genAi/request/topK``
- ``OTelAttribute/genAi/request/topP``
- ``OTelAttribute/genAi/response/finishReasons``
- ``OTelAttribute/genAi/response/id``
- ``OTelAttribute/genAi/response/model``
- ``OTelAttribute/genAi/systemInstructions``
- ``OTelAttribute/genAi/token/type``
- ``OTelAttribute/genAi/tool/call/arguments``
- ``OTelAttribute/genAi/tool/call/id``
- ``OTelAttribute/genAi/tool/call/result``
- ``OTelAttribute/genAi/tool/definitions``
- ``OTelAttribute/genAi/tool/description``
- ``OTelAttribute/genAi/tool/name``
- ``OTelAttribute/genAi/tool/type``
- ``OTelAttribute/genAi/usage/inputTokens``
- ``OTelAttribute/genAi/usage/outputTokens``

### Deprecated GenAI Attributes

- ``Tracing/SpanAttributes/GenAiAttributes/NestedSpanAttributes/completion``
- ``Tracing/SpanAttributes/GenAiAttributes/NestedSpanAttributes/prompt``
- ``Tracing/SpanAttributes/GenAiAttributes/NestedSpanAttributes/system``
- ``Tracing/SpanAttributes/GenAiAttributes/UsageAttributes/NestedSpanAttributes/completionTokens``
- ``Tracing/SpanAttributes/GenAiAttributes/UsageAttributes/NestedSpanAttributes/promptTokens``
- ``OTelAttribute/genAi/completion``
- ``OTelAttribute/genAi/prompt``
- ``OTelAttribute/genAi/system``
- ``OTelAttribute/genAi/usage/completionTokens``
- ``OTelAttribute/genAi/usage/promptTokens``

### Deprecated OpenAI GenAI Attributes

- ``Tracing/SpanAttributes/GenAiAttributes/OpenaiAttributes/RequestAttributes/NestedSpanAttributes/responseFormat``
- ``Tracing/SpanAttributes/GenAiAttributes/OpenaiAttributes/RequestAttributes/NestedSpanAttributes/seed``
- ``Tracing/SpanAttributes/GenAiAttributes/OpenaiAttributes/RequestAttributes/NestedSpanAttributes/serviceTier``
- ``Tracing/SpanAttributes/GenAiAttributes/OpenaiAttributes/ResponseAttributes/NestedSpanAttributes/serviceTier``
- ``Tracing/SpanAttributes/GenAiAttributes/OpenaiAttributes/ResponseAttributes/NestedSpanAttributes/systemFingerprint``
- ``OTelAttribute/genAi/openai/request/responseFormat``
- ``OTelAttribute/genAi/openai/request/seed``
- ``OTelAttribute/genAi/openai/request/serviceTier``
- ``OTelAttribute/genAi/openai/response/serviceTier``
- ``OTelAttribute/genAi/openai/response/systemFingerprint``

### registry.geo

- ``Tracing/SpanAttributes/GeoAttributes/ContinentAttributes/NestedSpanAttributes/code``
- ``Tracing/SpanAttributes/GeoAttributes/CountryAttributes/NestedSpanAttributes/isoCode``
- ``Tracing/SpanAttributes/GeoAttributes/LocalityAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/GeoAttributes/LocationAttributes/NestedSpanAttributes/lat``
- ``Tracing/SpanAttributes/GeoAttributes/LocationAttributes/NestedSpanAttributes/lon``
- ``Tracing/SpanAttributes/GeoAttributes/NestedSpanAttributes/postalCode``
- ``Tracing/SpanAttributes/GeoAttributes/RegionAttributes/NestedSpanAttributes/isoCode``
- ``OTelAttribute/geo/continent/code``
- ``OTelAttribute/geo/country/isoCode``
- ``OTelAttribute/geo/locality/name``
- ``OTelAttribute/geo/location/lat``
- ``OTelAttribute/geo/location/lon``
- ``OTelAttribute/geo/postalCode``
- ``OTelAttribute/geo/region/isoCode``

### Go Attributes

- ``Tracing/SpanAttributes/GoAttributes/MemoryAttributes/NestedSpanAttributes/type``
- ``OTelAttribute/go/memory/type``

### GraphQL Attributes

- ``Tracing/SpanAttributes/GraphqlAttributes/NestedSpanAttributes/document``
- ``Tracing/SpanAttributes/GraphqlAttributes/OperationAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/GraphqlAttributes/OperationAttributes/NestedSpanAttributes/type``
- ``OTelAttribute/graphql/document``
- ``OTelAttribute/graphql/operation/name``
- ``OTelAttribute/graphql/operation/type``

### Hardware Attributes

- ``Tracing/SpanAttributes/HwAttributes/BatteryAttributes/NestedSpanAttributes/capacity``
- ``Tracing/SpanAttributes/HwAttributes/BatteryAttributes/NestedSpanAttributes/chemistry``
- ``Tracing/SpanAttributes/HwAttributes/BatteryAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/biosVersion``
- ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/driverVersion``
- ``Tracing/SpanAttributes/HwAttributes/EnclosureAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/firmwareVersion``
- ``Tracing/SpanAttributes/HwAttributes/GpuAttributes/NestedSpanAttributes/task``
- ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/limitType``
- ``Tracing/SpanAttributes/HwAttributes/LogicalDiskAttributes/NestedSpanAttributes/raidLevel``
- ``Tracing/SpanAttributes/HwAttributes/LogicalDiskAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/HwAttributes/MemoryAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/model``
- ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/HwAttributes/NetworkAttributes/NestedSpanAttributes/logicalAddresses``
- ``Tracing/SpanAttributes/HwAttributes/NetworkAttributes/NestedSpanAttributes/physicalAddress``
- ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/parent``
- ``Tracing/SpanAttributes/HwAttributes/PhysicalDiskAttributes/NestedSpanAttributes/smartAttribute``
- ``Tracing/SpanAttributes/HwAttributes/PhysicalDiskAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/HwAttributes/PhysicalDiskAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/sensorLocation``
- ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/serialNumber``
- ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/HwAttributes/TapeDriveAttributes/NestedSpanAttributes/operationType``
- ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/HwAttributes/NestedSpanAttributes/vendor``
- ``OTelAttribute/hw/battery/capacity``
- ``OTelAttribute/hw/battery/chemistry``
- ``OTelAttribute/hw/battery/state``
- ``OTelAttribute/hw/biosVersion``
- ``OTelAttribute/hw/driverVersion``
- ``OTelAttribute/hw/enclosure/type``
- ``OTelAttribute/hw/firmwareVersion``
- ``OTelAttribute/hw/gpu/task``
- ``OTelAttribute/hw/id``
- ``OTelAttribute/hw/limitType``
- ``OTelAttribute/hw/logicalDisk/raidLevel``
- ``OTelAttribute/hw/logicalDisk/state``
- ``OTelAttribute/hw/memory/type``
- ``OTelAttribute/hw/model``
- ``OTelAttribute/hw/name``
- ``OTelAttribute/hw/network/logicalAddresses``
- ``OTelAttribute/hw/network/physicalAddress``
- ``OTelAttribute/hw/parent``
- ``OTelAttribute/hw/physicalDisk/smartAttribute``
- ``OTelAttribute/hw/physicalDisk/state``
- ``OTelAttribute/hw/physicalDisk/type``
- ``OTelAttribute/hw/sensorLocation``
- ``OTelAttribute/hw/serialNumber``
- ``OTelAttribute/hw/state``
- ``OTelAttribute/hw/tapeDrive/operationType``
- ``OTelAttribute/hw/type``
- ``OTelAttribute/hw/vendor``

### Heroku Attributes

- ``Tracing/SpanAttributes/HerokuAttributes/AppAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/HerokuAttributes/ReleaseAttributes/NestedSpanAttributes/commit``
- ``Tracing/SpanAttributes/HerokuAttributes/ReleaseAttributes/NestedSpanAttributes/creationTimestamp``
- ``OTelAttribute/heroku/app/id``
- ``OTelAttribute/heroku/release/commit``
- ``OTelAttribute/heroku/release/creationTimestamp``

### Host Attributes

- ``Tracing/SpanAttributes/HostAttributes/NestedSpanAttributes/arch``
- ``Tracing/SpanAttributes/HostAttributes/CpuAttributes/CacheAttributes/L2Attributes/NestedSpanAttributes/size``
- ``Tracing/SpanAttributes/HostAttributes/CpuAttributes/NestedSpanAttributes/family``
- ``Tracing/SpanAttributes/HostAttributes/CpuAttributes/ModelAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/HostAttributes/CpuAttributes/ModelAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/HostAttributes/CpuAttributes/NestedSpanAttributes/stepping``
- ``Tracing/SpanAttributes/HostAttributes/CpuAttributes/VendorAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/HostAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/HostAttributes/ImageAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/HostAttributes/ImageAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/HostAttributes/ImageAttributes/NestedSpanAttributes/version``
- ``Tracing/SpanAttributes/HostAttributes/NestedSpanAttributes/ip``
- ``Tracing/SpanAttributes/HostAttributes/NestedSpanAttributes/mac``
- ``Tracing/SpanAttributes/HostAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/HostAttributes/NestedSpanAttributes/type``
- ``OTelAttribute/host/arch``
- ``OTelAttribute/host/cpu/cache/l2/size``
- ``OTelAttribute/host/cpu/family``
- ``OTelAttribute/host/cpu/model/id``
- ``OTelAttribute/host/cpu/model/name``
- ``OTelAttribute/host/cpu/stepping``
- ``OTelAttribute/host/cpu/vendor/id``
- ``OTelAttribute/host/id``
- ``OTelAttribute/host/image/id``
- ``OTelAttribute/host/image/name``
- ``OTelAttribute/host/image/version``
- ``OTelAttribute/host/ip``
- ``OTelAttribute/host/mac``
- ``OTelAttribute/host/name``
- ``OTelAttribute/host/type``

### HTTP Attributes

- ``Tracing/SpanAttributes/HttpAttributes/ConnectionAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/BodyAttributes/NestedSpanAttributes/size``
- ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/header``
- ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/NestedSpanAttributes/method``
- ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/NestedSpanAttributes/methodOriginal``
- ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/NestedSpanAttributes/resendCount``
- ``Tracing/SpanAttributes/HttpAttributes/RequestAttributes/NestedSpanAttributes/size``
- ``Tracing/SpanAttributes/HttpAttributes/ResponseAttributes/BodyAttributes/NestedSpanAttributes/size``
- ``Tracing/SpanAttributes/HttpAttributes/ResponseAttributes/header``
- ``Tracing/SpanAttributes/HttpAttributes/ResponseAttributes/NestedSpanAttributes/size``
- ``Tracing/SpanAttributes/HttpAttributes/ResponseAttributes/NestedSpanAttributes/statusCode``
- ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/route``
- ``OTelAttribute/http/connection/state``
- ``OTelAttribute/http/request/body/size``
- ``OTelAttribute/http/request/header``
- ``OTelAttribute/http/request/method``
- ``OTelAttribute/http/request/methodOriginal``
- ``OTelAttribute/http/request/resendCount``
- ``OTelAttribute/http/request/size``
- ``OTelAttribute/http/response/body/size``
- ``OTelAttribute/http/response/header``
- ``OTelAttribute/http/response/size``
- ``OTelAttribute/http/response/statusCode``
- ``OTelAttribute/http/route``

### Deprecated HTTP Attributes

- ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/clientIp``
- ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/flavor``
- ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/host``
- ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/method``
- ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/requestContentLength``
- ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/requestContentLengthUncompressed``
- ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/responseContentLength``
- ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/responseContentLengthUncompressed``
- ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/scheme``
- ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/serverName``
- ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/statusCode``
- ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/target``
- ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/url``
- ``Tracing/SpanAttributes/HttpAttributes/NestedSpanAttributes/userAgent``
- ``OTelAttribute/http/clientIp``
- ``OTelAttribute/http/flavor``
- ``OTelAttribute/http/host``
- ``OTelAttribute/http/method``
- ``OTelAttribute/http/requestContentLength``
- ``OTelAttribute/http/requestContentLengthUncompressed``
- ``OTelAttribute/http/responseContentLength``
- ``OTelAttribute/http/responseContentLengthUncompressed``
- ``OTelAttribute/http/scheme``
- ``OTelAttribute/http/serverName``
- ``OTelAttribute/http/statusCode``
- ``OTelAttribute/http/target``
- ``OTelAttribute/http/url``
- ``OTelAttribute/http/userAgent``

### iOS Attributes

- ``Tracing/SpanAttributes/IosAttributes/AppAttributes/NestedSpanAttributes/state``
- ``OTelAttribute/ios/app/state``

### Deprecated iOS Attributes

- ``Tracing/SpanAttributes/IosAttributes/NestedSpanAttributes/state``
- ``OTelAttribute/ios/state``

### Kubernetes Attributes

- ``Tracing/SpanAttributes/K8sAttributes/ClusterAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/K8sAttributes/ClusterAttributes/NestedSpanAttributes/uid``
- ``Tracing/SpanAttributes/K8sAttributes/ContainerAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/K8sAttributes/ContainerAttributes/NestedSpanAttributes/restartCount``
- ``Tracing/SpanAttributes/K8sAttributes/ContainerAttributes/StatusAttributes/NestedSpanAttributes/lastTerminatedReason``
- ``Tracing/SpanAttributes/K8sAttributes/ContainerAttributes/StatusAttributes/NestedSpanAttributes/reason``
- ``Tracing/SpanAttributes/K8sAttributes/ContainerAttributes/StatusAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/K8sAttributes/CronjobAttributes/annotation``
- ``Tracing/SpanAttributes/K8sAttributes/CronjobAttributes/label``
- ``Tracing/SpanAttributes/K8sAttributes/CronjobAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/K8sAttributes/CronjobAttributes/NestedSpanAttributes/uid``
- ``Tracing/SpanAttributes/K8sAttributes/DaemonsetAttributes/annotation``
- ``Tracing/SpanAttributes/K8sAttributes/DaemonsetAttributes/label``
- ``Tracing/SpanAttributes/K8sAttributes/DaemonsetAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/K8sAttributes/DaemonsetAttributes/NestedSpanAttributes/uid``
- ``Tracing/SpanAttributes/K8sAttributes/DeploymentAttributes/annotation``
- ``Tracing/SpanAttributes/K8sAttributes/DeploymentAttributes/label``
- ``Tracing/SpanAttributes/K8sAttributes/DeploymentAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/K8sAttributes/DeploymentAttributes/NestedSpanAttributes/uid``
- ``Tracing/SpanAttributes/K8sAttributes/HpaAttributes/MetricAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/K8sAttributes/HpaAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/K8sAttributes/HpaAttributes/ScaletargetrefAttributes/NestedSpanAttributes/apiVersion``
- ``Tracing/SpanAttributes/K8sAttributes/HpaAttributes/ScaletargetrefAttributes/NestedSpanAttributes/kind``
- ``Tracing/SpanAttributes/K8sAttributes/HpaAttributes/ScaletargetrefAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/K8sAttributes/HpaAttributes/NestedSpanAttributes/uid``
- ``Tracing/SpanAttributes/K8sAttributes/HugepageAttributes/NestedSpanAttributes/size``
- ``Tracing/SpanAttributes/K8sAttributes/JobAttributes/annotation``
- ``Tracing/SpanAttributes/K8sAttributes/JobAttributes/label``
- ``Tracing/SpanAttributes/K8sAttributes/JobAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/K8sAttributes/JobAttributes/NestedSpanAttributes/uid``
- ``Tracing/SpanAttributes/K8sAttributes/NamespaceAttributes/annotation``
- ``Tracing/SpanAttributes/K8sAttributes/NamespaceAttributes/label``
- ``Tracing/SpanAttributes/K8sAttributes/NamespaceAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/K8sAttributes/NamespaceAttributes/NestedSpanAttributes/phase``
- ``Tracing/SpanAttributes/K8sAttributes/NodeAttributes/annotation``
- ``Tracing/SpanAttributes/K8sAttributes/NodeAttributes/ConditionAttributes/NestedSpanAttributes/status``
- ``Tracing/SpanAttributes/K8sAttributes/NodeAttributes/ConditionAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/K8sAttributes/NodeAttributes/label``
- ``Tracing/SpanAttributes/K8sAttributes/NodeAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/K8sAttributes/NodeAttributes/NestedSpanAttributes/uid``
- ``Tracing/SpanAttributes/K8sAttributes/PodAttributes/annotation``
- ``Tracing/SpanAttributes/K8sAttributes/PodAttributes/label``
- ``Tracing/SpanAttributes/K8sAttributes/PodAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/K8sAttributes/PodAttributes/StatusAttributes/NestedSpanAttributes/phase``
- ``Tracing/SpanAttributes/K8sAttributes/PodAttributes/StatusAttributes/NestedSpanAttributes/reason``
- ``Tracing/SpanAttributes/K8sAttributes/PodAttributes/NestedSpanAttributes/uid``
- ``Tracing/SpanAttributes/K8sAttributes/ReplicasetAttributes/annotation``
- ``Tracing/SpanAttributes/K8sAttributes/ReplicasetAttributes/label``
- ``Tracing/SpanAttributes/K8sAttributes/ReplicasetAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/K8sAttributes/ReplicasetAttributes/NestedSpanAttributes/uid``
- ``Tracing/SpanAttributes/K8sAttributes/ReplicationcontrollerAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/K8sAttributes/ReplicationcontrollerAttributes/NestedSpanAttributes/uid``
- ``Tracing/SpanAttributes/K8sAttributes/ResourcequotaAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/K8sAttributes/ResourcequotaAttributes/NestedSpanAttributes/resourceName``
- ``Tracing/SpanAttributes/K8sAttributes/ResourcequotaAttributes/NestedSpanAttributes/uid``
- ``Tracing/SpanAttributes/K8sAttributes/StatefulsetAttributes/annotation``
- ``Tracing/SpanAttributes/K8sAttributes/StatefulsetAttributes/label``
- ``Tracing/SpanAttributes/K8sAttributes/StatefulsetAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/K8sAttributes/StatefulsetAttributes/NestedSpanAttributes/uid``
- ``Tracing/SpanAttributes/K8sAttributes/StorageclassAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/K8sAttributes/VolumeAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/K8sAttributes/VolumeAttributes/NestedSpanAttributes/type``
- ``OTelAttribute/k8s/cluster/name``
- ``OTelAttribute/k8s/cluster/uid``
- ``OTelAttribute/k8s/container/name``
- ``OTelAttribute/k8s/container/restartCount``
- ``OTelAttribute/k8s/container/status/lastTerminatedReason``
- ``OTelAttribute/k8s/container/status/reason``
- ``OTelAttribute/k8s/container/status/state``
- ``OTelAttribute/k8s/cronjob/annotation``
- ``OTelAttribute/k8s/cronjob/label``
- ``OTelAttribute/k8s/cronjob/name``
- ``OTelAttribute/k8s/cronjob/uid``
- ``OTelAttribute/k8s/daemonset/annotation``
- ``OTelAttribute/k8s/daemonset/label``
- ``OTelAttribute/k8s/daemonset/name``
- ``OTelAttribute/k8s/daemonset/uid``
- ``OTelAttribute/k8s/deployment/annotation``
- ``OTelAttribute/k8s/deployment/label``
- ``OTelAttribute/k8s/deployment/name``
- ``OTelAttribute/k8s/deployment/uid``
- ``OTelAttribute/k8s/hpa/metric/type``
- ``OTelAttribute/k8s/hpa/name``
- ``OTelAttribute/k8s/hpa/scaletargetref/apiVersion``
- ``OTelAttribute/k8s/hpa/scaletargetref/kind``
- ``OTelAttribute/k8s/hpa/scaletargetref/name``
- ``OTelAttribute/k8s/hpa/uid``
- ``OTelAttribute/k8s/hugepage/size``
- ``OTelAttribute/k8s/job/annotation``
- ``OTelAttribute/k8s/job/label``
- ``OTelAttribute/k8s/job/name``
- ``OTelAttribute/k8s/job/uid``
- ``OTelAttribute/k8s/namespace/annotation``
- ``OTelAttribute/k8s/namespace/label``
- ``OTelAttribute/k8s/namespace/name``
- ``OTelAttribute/k8s/namespace/phase``
- ``OTelAttribute/k8s/node/annotation``
- ``OTelAttribute/k8s/node/condition/status``
- ``OTelAttribute/k8s/node/condition/type``
- ``OTelAttribute/k8s/node/label``
- ``OTelAttribute/k8s/node/name``
- ``OTelAttribute/k8s/node/uid``
- ``OTelAttribute/k8s/pod/annotation``
- ``OTelAttribute/k8s/pod/label``
- ``OTelAttribute/k8s/pod/name``
- ``OTelAttribute/k8s/pod/status/phase``
- ``OTelAttribute/k8s/pod/status/reason``
- ``OTelAttribute/k8s/pod/uid``
- ``OTelAttribute/k8s/replicaset/annotation``
- ``OTelAttribute/k8s/replicaset/label``
- ``OTelAttribute/k8s/replicaset/name``
- ``OTelAttribute/k8s/replicaset/uid``
- ``OTelAttribute/k8s/replicationcontroller/name``
- ``OTelAttribute/k8s/replicationcontroller/uid``
- ``OTelAttribute/k8s/resourcequota/name``
- ``OTelAttribute/k8s/resourcequota/resourceName``
- ``OTelAttribute/k8s/resourcequota/uid``
- ``OTelAttribute/k8s/statefulset/annotation``
- ``OTelAttribute/k8s/statefulset/label``
- ``OTelAttribute/k8s/statefulset/name``
- ``OTelAttribute/k8s/statefulset/uid``
- ``OTelAttribute/k8s/storageclass/name``
- ``OTelAttribute/k8s/volume/name``
- ``OTelAttribute/k8s/volume/type``

### Deprecated Kubernetes Attributes

- ``Tracing/SpanAttributes/K8sAttributes/PodAttributes/labels``
- ``OTelAttribute/k8s/pod/labels``

### Linux Memory Attributes

- ``Tracing/SpanAttributes/LinuxAttributes/MemoryAttributes/SlabAttributes/NestedSpanAttributes/state``
- ``OTelAttribute/linux/memory/slab/state``

### General Log Attributes

- ``Tracing/SpanAttributes/LogAttributes/NestedSpanAttributes/iostream``
- ``OTelAttribute/log/iostream``

### Log File Attributes

- ``Tracing/SpanAttributes/LogAttributes/FileAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/LogAttributes/FileAttributes/NestedSpanAttributes/nameResolved``
- ``Tracing/SpanAttributes/LogAttributes/FileAttributes/NestedSpanAttributes/path``
- ``Tracing/SpanAttributes/LogAttributes/FileAttributes/NestedSpanAttributes/pathResolved``
- ``OTelAttribute/log/file/name``
- ``OTelAttribute/log/file/nameResolved``
- ``OTelAttribute/log/file/path``
- ``OTelAttribute/log/file/pathResolved``

### Log Record Attributes

- ``Tracing/SpanAttributes/LogAttributes/RecordAttributes/NestedSpanAttributes/original``
- ``Tracing/SpanAttributes/LogAttributes/RecordAttributes/NestedSpanAttributes/uid``
- ``OTelAttribute/log/record/original``
- ``OTelAttribute/log/record/uid``

### General Messaging Attributes

- ``Tracing/SpanAttributes/MessagingAttributes/BatchAttributes/NestedSpanAttributes/messageCount``
- ``Tracing/SpanAttributes/MessagingAttributes/ClientAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/MessagingAttributes/ConsumerAttributes/GroupAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/MessagingAttributes/DestinationAttributes/NestedSpanAttributes/anonymous``
- ``Tracing/SpanAttributes/MessagingAttributes/DestinationAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/MessagingAttributes/DestinationAttributes/PartitionAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/MessagingAttributes/DestinationAttributes/SubscriptionAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/MessagingAttributes/DestinationAttributes/NestedSpanAttributes/template``
- ``Tracing/SpanAttributes/MessagingAttributes/DestinationAttributes/NestedSpanAttributes/temporary``
- ``Tracing/SpanAttributes/MessagingAttributes/MessageAttributes/BodyAttributes/NestedSpanAttributes/size``
- ``Tracing/SpanAttributes/MessagingAttributes/MessageAttributes/NestedSpanAttributes/conversationId``
- ``Tracing/SpanAttributes/MessagingAttributes/MessageAttributes/EnvelopeAttributes/NestedSpanAttributes/size``
- ``Tracing/SpanAttributes/MessagingAttributes/MessageAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/MessagingAttributes/OperationAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/MessagingAttributes/OperationAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/MessagingAttributes/NestedSpanAttributes/system``
- ``OTelAttribute/messaging/batch/messageCount``
- ``OTelAttribute/messaging/client/id``
- ``OTelAttribute/messaging/consumer/group/name``
- ``OTelAttribute/messaging/destination/anonymous``
- ``OTelAttribute/messaging/destination/name``
- ``OTelAttribute/messaging/destination/partition/id``
- ``OTelAttribute/messaging/destination/subscription/name``
- ``OTelAttribute/messaging/destination/template``
- ``OTelAttribute/messaging/destination/temporary``
- ``OTelAttribute/messaging/message/body/size``
- ``OTelAttribute/messaging/message/conversationId``
- ``OTelAttribute/messaging/message/envelope/size``
- ``OTelAttribute/messaging/message/id``
- ``OTelAttribute/messaging/operation/name``
- ``OTelAttribute/messaging/operation/type``
- ``OTelAttribute/messaging/system``

### Deprecated Messaging Attributes

- ``Tracing/SpanAttributes/MessagingAttributes/NestedSpanAttributes/clientId``
- ``Tracing/SpanAttributes/MessagingAttributes/DestinationPublishAttributes/NestedSpanAttributes/anonymous``
- ``Tracing/SpanAttributes/MessagingAttributes/DestinationPublishAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/MessagingAttributes/EventhubsAttributes/ConsumerAttributes/NestedSpanAttributes/group``
- ``Tracing/SpanAttributes/MessagingAttributes/KafkaAttributes/ConsumerAttributes/NestedSpanAttributes/group``
- ``Tracing/SpanAttributes/MessagingAttributes/KafkaAttributes/DestinationAttributes/NestedSpanAttributes/partition``
- ``Tracing/SpanAttributes/MessagingAttributes/KafkaAttributes/MessageAttributes/NestedSpanAttributes/offset``
- ``Tracing/SpanAttributes/MessagingAttributes/NestedSpanAttributes/_operation``
- ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/NestedSpanAttributes/clientGroup``
- ``Tracing/SpanAttributes/MessagingAttributes/ServicebusAttributes/DestinationAttributes/NestedSpanAttributes/subscriptionName``
- ``OTelAttribute/messaging/clientId``
- ``OTelAttribute/messaging/destinationPublish/anonymous``
- ``OTelAttribute/messaging/destinationPublish/name``
- ``OTelAttribute/messaging/eventhubs/consumer/group``
- ``OTelAttribute/messaging/kafka/consumer/group``
- ``OTelAttribute/messaging/kafka/destination/partition``
- ``OTelAttribute/messaging/kafka/message/offset``
- ``OTelAttribute/messaging/_operation``
- ``OTelAttribute/messaging/rocketmq/clientGroup``
- ``OTelAttribute/messaging/servicebus/destination/subscriptionName``

### Azure Event Hubs Attributes

- ``Tracing/SpanAttributes/MessagingAttributes/EventhubsAttributes/MessageAttributes/NestedSpanAttributes/enqueuedTime``
- ``OTelAttribute/messaging/eventhubs/message/enqueuedTime``

### GCP Pub/Sub Attributes

- ``Tracing/SpanAttributes/MessagingAttributes/GcpPubsubAttributes/MessageAttributes/NestedSpanAttributes/ackDeadline``
- ``Tracing/SpanAttributes/MessagingAttributes/GcpPubsubAttributes/MessageAttributes/NestedSpanAttributes/ackId``
- ``Tracing/SpanAttributes/MessagingAttributes/GcpPubsubAttributes/MessageAttributes/NestedSpanAttributes/deliveryAttempt``
- ``Tracing/SpanAttributes/MessagingAttributes/GcpPubsubAttributes/MessageAttributes/NestedSpanAttributes/orderingKey``
- ``OTelAttribute/messaging/gcpPubsub/message/ackDeadline``
- ``OTelAttribute/messaging/gcpPubsub/message/ackId``
- ``OTelAttribute/messaging/gcpPubsub/message/deliveryAttempt``
- ``OTelAttribute/messaging/gcpPubsub/message/orderingKey``

### Kafka Attributes

- ``Tracing/SpanAttributes/MessagingAttributes/KafkaAttributes/MessageAttributes/NestedSpanAttributes/key``
- ``Tracing/SpanAttributes/MessagingAttributes/KafkaAttributes/MessageAttributes/NestedSpanAttributes/tombstone``
- ``Tracing/SpanAttributes/MessagingAttributes/KafkaAttributes/NestedSpanAttributes/offset``
- ``OTelAttribute/messaging/kafka/message/key``
- ``OTelAttribute/messaging/kafka/message/tombstone``
- ``OTelAttribute/messaging/kafka/offset``

### RabbitMQ Attributes

- ``Tracing/SpanAttributes/MessagingAttributes/RabbitmqAttributes/DestinationAttributes/NestedSpanAttributes/routingKey``
- ``Tracing/SpanAttributes/MessagingAttributes/RabbitmqAttributes/MessageAttributes/NestedSpanAttributes/deliveryTag``
- ``OTelAttribute/messaging/rabbitmq/destination/routingKey``
- ``OTelAttribute/messaging/rabbitmq/message/deliveryTag``

### RocketMQ Attributes

- ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/NestedSpanAttributes/consumptionModel``
- ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/MessageAttributes/NestedSpanAttributes/delayTimeLevel``
- ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/MessageAttributes/NestedSpanAttributes/deliveryTimestamp``
- ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/MessageAttributes/NestedSpanAttributes/group``
- ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/MessageAttributes/NestedSpanAttributes/keys``
- ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/MessageAttributes/NestedSpanAttributes/tag``
- ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/MessageAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/MessagingAttributes/RocketmqAttributes/NestedSpanAttributes/namespace``
- ``OTelAttribute/messaging/rocketmq/consumptionModel``
- ``OTelAttribute/messaging/rocketmq/message/delayTimeLevel``
- ``OTelAttribute/messaging/rocketmq/message/deliveryTimestamp``
- ``OTelAttribute/messaging/rocketmq/message/group``
- ``OTelAttribute/messaging/rocketmq/message/keys``
- ``OTelAttribute/messaging/rocketmq/message/tag``
- ``OTelAttribute/messaging/rocketmq/message/type``
- ``OTelAttribute/messaging/rocketmq/namespace``

### Azure Service Bus Attributes

- ``Tracing/SpanAttributes/MessagingAttributes/ServicebusAttributes/NestedSpanAttributes/dispositionStatus``
- ``Tracing/SpanAttributes/MessagingAttributes/ServicebusAttributes/MessageAttributes/NestedSpanAttributes/deliveryCount``
- ``Tracing/SpanAttributes/MessagingAttributes/ServicebusAttributes/MessageAttributes/NestedSpanAttributes/enqueuedTime``
- ``OTelAttribute/messaging/servicebus/dispositionStatus``
- ``OTelAttribute/messaging/servicebus/message/deliveryCount``
- ``OTelAttribute/messaging/servicebus/message/enqueuedTime``

### Network Attributes

- ``Tracing/SpanAttributes/NetworkAttributes/CarrierAttributes/NestedSpanAttributes/icc``
- ``Tracing/SpanAttributes/NetworkAttributes/CarrierAttributes/NestedSpanAttributes/mcc``
- ``Tracing/SpanAttributes/NetworkAttributes/CarrierAttributes/NestedSpanAttributes/mnc``
- ``Tracing/SpanAttributes/NetworkAttributes/CarrierAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/NetworkAttributes/ConnectionAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/NetworkAttributes/ConnectionAttributes/NestedSpanAttributes/subtype``
- ``Tracing/SpanAttributes/NetworkAttributes/ConnectionAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/NetworkAttributes/InterfaceAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/NetworkAttributes/IoAttributes/NestedSpanAttributes/direction``
- ``Tracing/SpanAttributes/NetworkAttributes/LocalAttributes/NestedSpanAttributes/address``
- ``Tracing/SpanAttributes/NetworkAttributes/LocalAttributes/NestedSpanAttributes/port``
- ``Tracing/SpanAttributes/NetworkAttributes/PeerAttributes/NestedSpanAttributes/address``
- ``Tracing/SpanAttributes/NetworkAttributes/PeerAttributes/NestedSpanAttributes/port``
- ``Tracing/SpanAttributes/NetworkAttributes/ProtocolAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/NetworkAttributes/ProtocolAttributes/NestedSpanAttributes/version``
- ``Tracing/SpanAttributes/NetworkAttributes/NestedSpanAttributes/transport``
- ``Tracing/SpanAttributes/NetworkAttributes/NestedSpanAttributes/type``
- ``OTelAttribute/network/carrier/icc``
- ``OTelAttribute/network/carrier/mcc``
- ``OTelAttribute/network/carrier/mnc``
- ``OTelAttribute/network/carrier/name``
- ``OTelAttribute/network/connection/state``
- ``OTelAttribute/network/connection/subtype``
- ``OTelAttribute/network/connection/type``
- ``OTelAttribute/network/interface/name``
- ``OTelAttribute/network/io/direction``
- ``OTelAttribute/network/local/address``
- ``OTelAttribute/network/local/port``
- ``OTelAttribute/network/peer/address``
- ``OTelAttribute/network/peer/port``
- ``OTelAttribute/network/protocol/name``
- ``OTelAttribute/network/protocol/version``
- ``OTelAttribute/network/transport``
- ``OTelAttribute/network/type``

### Deprecated Network Attributes

- ``Tracing/SpanAttributes/NetAttributes/HostAttributes/NestedSpanAttributes/ip``
- ``Tracing/SpanAttributes/NetAttributes/HostAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/NetAttributes/HostAttributes/NestedSpanAttributes/port``
- ``Tracing/SpanAttributes/NetAttributes/PeerAttributes/NestedSpanAttributes/ip``
- ``Tracing/SpanAttributes/NetAttributes/PeerAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/NetAttributes/PeerAttributes/NestedSpanAttributes/port``
- ``Tracing/SpanAttributes/NetAttributes/ProtocolAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/NetAttributes/ProtocolAttributes/NestedSpanAttributes/version``
- ``Tracing/SpanAttributes/NetAttributes/SockAttributes/NestedSpanAttributes/family``
- ``Tracing/SpanAttributes/NetAttributes/SockAttributes/HostAttributes/NestedSpanAttributes/addr``
- ``Tracing/SpanAttributes/NetAttributes/SockAttributes/HostAttributes/NestedSpanAttributes/port``
- ``Tracing/SpanAttributes/NetAttributes/SockAttributes/PeerAttributes/NestedSpanAttributes/addr``
- ``Tracing/SpanAttributes/NetAttributes/SockAttributes/PeerAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/NetAttributes/SockAttributes/PeerAttributes/NestedSpanAttributes/port``
- ``Tracing/SpanAttributes/NetAttributes/NestedSpanAttributes/transport``
- ``OTelAttribute/net/host/ip``
- ``OTelAttribute/net/host/name``
- ``OTelAttribute/net/host/port``
- ``OTelAttribute/net/peer/ip``
- ``OTelAttribute/net/peer/name``
- ``OTelAttribute/net/peer/port``
- ``OTelAttribute/net/protocol/name``
- ``OTelAttribute/net/protocol/version``
- ``OTelAttribute/net/sock/family``
- ``OTelAttribute/net/sock/host/addr``
- ``OTelAttribute/net/sock/host/port``
- ``OTelAttribute/net/sock/peer/addr``
- ``OTelAttribute/net/sock/peer/name``
- ``OTelAttribute/net/sock/peer/port``
- ``OTelAttribute/net/transport``

### NFS Attributes

- ``Tracing/SpanAttributes/NfsAttributes/OperationAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/NfsAttributes/ServerAttributes/RepcacheAttributes/NestedSpanAttributes/status``
- ``OTelAttribute/nfs/operation/name``
- ``OTelAttribute/nfs/server/repcache/status``

### Open Container Initiative (OCI) Attributes

- ``Tracing/SpanAttributes/OciAttributes/ManifestAttributes/NestedSpanAttributes/digest``
- ``OTelAttribute/oci/manifest/digest``

### ONC RPC (Sun RPC) attributes

- ``Tracing/SpanAttributes/OncRpcAttributes/ProcedureAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/OncRpcAttributes/ProcedureAttributes/NestedSpanAttributes/number``
- ``Tracing/SpanAttributes/OncRpcAttributes/ProgramAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/OncRpcAttributes/NestedSpanAttributes/version``
- ``OTelAttribute/oncRpc/procedure/name``
- ``OTelAttribute/oncRpc/procedure/number``
- ``OTelAttribute/oncRpc/program/name``
- ``OTelAttribute/oncRpc/version``

### OpenAI Attributes

- ``Tracing/SpanAttributes/OpenaiAttributes/RequestAttributes/NestedSpanAttributes/serviceTier``
- ``Tracing/SpanAttributes/OpenaiAttributes/ResponseAttributes/NestedSpanAttributes/serviceTier``
- ``Tracing/SpanAttributes/OpenaiAttributes/ResponseAttributes/NestedSpanAttributes/systemFingerprint``
- ``OTelAttribute/openai/request/serviceTier``
- ``OTelAttribute/openai/response/serviceTier``
- ``OTelAttribute/openai/response/systemFingerprint``

### Openshift Attributes

- ``Tracing/SpanAttributes/OpenshiftAttributes/ClusterquotaAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/OpenshiftAttributes/ClusterquotaAttributes/NestedSpanAttributes/uid``
- ``OTelAttribute/openshift/clusterquota/name``
- ``OTelAttribute/openshift/clusterquota/uid``

### OpenTracing Attributes

- ``Tracing/SpanAttributes/OpentracingAttributes/NestedSpanAttributes/refType``
- ``OTelAttribute/opentracing/refType``

### Operating System Attributes

- ``Tracing/SpanAttributes/OsAttributes/NestedSpanAttributes/buildId``
- ``Tracing/SpanAttributes/OsAttributes/NestedSpanAttributes/description``
- ``Tracing/SpanAttributes/OsAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/OsAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/OsAttributes/NestedSpanAttributes/version``
- ``OTelAttribute/os/buildId``
- ``OTelAttribute/os/description``
- ``OTelAttribute/os/name``
- ``OTelAttribute/os/type``
- ``OTelAttribute/os/version``

### OTel Attributes

- ``Tracing/SpanAttributes/OtelAttributes/SpanAttributes/ParentAttributes/NestedSpanAttributes/origin``
- ``Tracing/SpanAttributes/OtelAttributes/SpanAttributes/NestedSpanAttributes/samplingResult``
- ``Tracing/SpanAttributes/OtelAttributes/NestedSpanAttributes/statusCode``
- ``Tracing/SpanAttributes/OtelAttributes/NestedSpanAttributes/statusDescription``
- ``OTelAttribute/otel/span/parent/origin``
- ``OTelAttribute/otel/span/samplingResult``
- ``OTelAttribute/otel/statusCode``
- ``OTelAttribute/otel/statusDescription``

### OTel Component Attributes

- ``Tracing/SpanAttributes/OtelAttributes/ComponentAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/OtelAttributes/ComponentAttributes/NestedSpanAttributes/type``
- ``OTelAttribute/otel/component/name``
- ``OTelAttribute/otel/component/type``

### Deprecated OTel Library Attributes

- ``Tracing/SpanAttributes/OtelAttributes/LibraryAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/OtelAttributes/LibraryAttributes/NestedSpanAttributes/version``
- ``OTelAttribute/otel/library/name``
- ``OTelAttribute/otel/library/version``

### OTel Scope Attributes

- ``Tracing/SpanAttributes/OtelAttributes/ScopeAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/OtelAttributes/ScopeAttributes/NestedSpanAttributes/schemaUrl``
- ``Tracing/SpanAttributes/OtelAttributes/ScopeAttributes/NestedSpanAttributes/version``
- ``OTelAttribute/otel/scope/name``
- ``OTelAttribute/otel/scope/schemaUrl``
- ``OTelAttribute/otel/scope/version``

### Peer Attributes

- ``Tracing/SpanAttributes/PeerAttributes/NestedSpanAttributes/service``
- ``OTelAttribute/peer/service``

### Pprof specific attributes for the Profiling signal

- ``Tracing/SpanAttributes/PprofAttributes/LocationAttributes/NestedSpanAttributes/isFolded``
- ``Tracing/SpanAttributes/PprofAttributes/MappingAttributes/NestedSpanAttributes/hasFilenames``
- ``Tracing/SpanAttributes/PprofAttributes/MappingAttributes/NestedSpanAttributes/hasFunctions``
- ``Tracing/SpanAttributes/PprofAttributes/MappingAttributes/NestedSpanAttributes/hasInlineFrames``
- ``Tracing/SpanAttributes/PprofAttributes/MappingAttributes/NestedSpanAttributes/hasLineNumbers``
- ``Tracing/SpanAttributes/PprofAttributes/ProfileAttributes/NestedSpanAttributes/comment``
- ``OTelAttribute/pprof/location/isFolded``
- ``OTelAttribute/pprof/mapping/hasFilenames``
- ``OTelAttribute/pprof/mapping/hasFunctions``
- ``OTelAttribute/pprof/mapping/hasInlineFrames``
- ``OTelAttribute/pprof/mapping/hasLineNumbers``
- ``OTelAttribute/pprof/profile/comment``

### Process Attributes

- ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/argsCount``
- ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/command``
- ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/commandArgs``
- ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/commandLine``
- ``Tracing/SpanAttributes/ProcessAttributes/ContextSwitchAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/ProcessAttributes/CreationAttributes/NestedSpanAttributes/time``
- ``Tracing/SpanAttributes/ProcessAttributes/environmentVariable``
- ``Tracing/SpanAttributes/ProcessAttributes/ExecutableAttributes/BuildIdAttributes/NestedSpanAttributes/gnu``
- ``Tracing/SpanAttributes/ProcessAttributes/ExecutableAttributes/BuildIdAttributes/NestedSpanAttributes/go``
- ``Tracing/SpanAttributes/ProcessAttributes/ExecutableAttributes/BuildIdAttributes/NestedSpanAttributes/htlhash``
- ``Tracing/SpanAttributes/ProcessAttributes/ExecutableAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/ProcessAttributes/ExecutableAttributes/NestedSpanAttributes/path``
- ``Tracing/SpanAttributes/ProcessAttributes/ExitAttributes/NestedSpanAttributes/code``
- ``Tracing/SpanAttributes/ProcessAttributes/ExitAttributes/NestedSpanAttributes/time``
- ``Tracing/SpanAttributes/ProcessAttributes/GroupLeaderAttributes/NestedSpanAttributes/pid``
- ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/interactive``
- ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/owner``
- ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/parentPid``
- ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/pid``
- ``Tracing/SpanAttributes/ProcessAttributes/RealUserAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/ProcessAttributes/RealUserAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/ProcessAttributes/RuntimeAttributes/NestedSpanAttributes/description``
- ``Tracing/SpanAttributes/ProcessAttributes/RuntimeAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/ProcessAttributes/RuntimeAttributes/NestedSpanAttributes/version``
- ``Tracing/SpanAttributes/ProcessAttributes/SavedUserAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/ProcessAttributes/SavedUserAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/ProcessAttributes/SessionLeaderAttributes/NestedSpanAttributes/pid``
- ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/title``
- ``Tracing/SpanAttributes/ProcessAttributes/UserAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/ProcessAttributes/UserAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/vpid``
- ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/workingDirectory``
- ``OTelAttribute/process/argsCount``
- ``OTelAttribute/process/command``
- ``OTelAttribute/process/commandArgs``
- ``OTelAttribute/process/commandLine``
- ``OTelAttribute/process/contextSwitch/type``
- ``OTelAttribute/process/creation/time``
- ``OTelAttribute/process/environmentVariable``
- ``OTelAttribute/process/executable/buildId/gnu``
- ``OTelAttribute/process/executable/buildId/go``
- ``OTelAttribute/process/executable/buildId/htlhash``
- ``OTelAttribute/process/executable/name``
- ``OTelAttribute/process/executable/path``
- ``OTelAttribute/process/exit/code``
- ``OTelAttribute/process/exit/time``
- ``OTelAttribute/process/groupLeader/pid``
- ``OTelAttribute/process/interactive``
- ``OTelAttribute/process/owner``
- ``OTelAttribute/process/parentPid``
- ``OTelAttribute/process/pid``
- ``OTelAttribute/process/realUser/id``
- ``OTelAttribute/process/realUser/name``
- ``OTelAttribute/process/runtime/description``
- ``OTelAttribute/process/runtime/name``
- ``OTelAttribute/process/runtime/version``
- ``OTelAttribute/process/savedUser/id``
- ``OTelAttribute/process/savedUser/name``
- ``OTelAttribute/process/sessionLeader/pid``
- ``OTelAttribute/process/state``
- ``OTelAttribute/process/title``
- ``OTelAttribute/process/user/id``
- ``OTelAttribute/process/user/name``
- ``OTelAttribute/process/vpid``
- ``OTelAttribute/process/workingDirectory``

### Deprecated Process Attributes

- ``Tracing/SpanAttributes/ProcessAttributes/NestedSpanAttributes/contextSwitchType``
- ``Tracing/SpanAttributes/ProcessAttributes/CpuAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/ProcessAttributes/ExecutableAttributes/BuildIdAttributes/NestedSpanAttributes/profiling``
- ``Tracing/SpanAttributes/ProcessAttributes/PagingAttributes/NestedSpanAttributes/faultType``
- ``OTelAttribute/process/contextSwitchType``
- ``OTelAttribute/process/cpu/state``
- ``OTelAttribute/process/executable/buildId/profiling``
- ``OTelAttribute/process/paging/faultType``

### registry.process.linux

- ``Tracing/SpanAttributes/ProcessAttributes/LinuxAttributes/NestedSpanAttributes/cgroup``
- ``OTelAttribute/process/linux/cgroup``

### Profile Frame Attributes

- ``Tracing/SpanAttributes/ProfileAttributes/FrameAttributes/NestedSpanAttributes/type``
- ``OTelAttribute/profile/frame/type``

### Remote Procedure Call (RPC) Attributes

- ``Tracing/SpanAttributes/RpcAttributes/ConnectRpcAttributes/NestedSpanAttributes/errorCode``
- ``Tracing/SpanAttributes/RpcAttributes/ConnectRpcAttributes/RequestAttributes/metadata``
- ``Tracing/SpanAttributes/RpcAttributes/ConnectRpcAttributes/ResponseAttributes/metadata``
- ``Tracing/SpanAttributes/RpcAttributes/GrpcAttributes/RequestAttributes/metadata``
- ``Tracing/SpanAttributes/RpcAttributes/GrpcAttributes/ResponseAttributes/metadata``
- ``Tracing/SpanAttributes/RpcAttributes/GrpcAttributes/NestedSpanAttributes/statusCode``
- ``Tracing/SpanAttributes/RpcAttributes/JsonrpcAttributes/NestedSpanAttributes/errorCode``
- ``Tracing/SpanAttributes/RpcAttributes/JsonrpcAttributes/NestedSpanAttributes/errorMessage``
- ``Tracing/SpanAttributes/RpcAttributes/JsonrpcAttributes/NestedSpanAttributes/requestId``
- ``Tracing/SpanAttributes/RpcAttributes/JsonrpcAttributes/NestedSpanAttributes/version``
- ``Tracing/SpanAttributes/RpcAttributes/MessageAttributes/NestedSpanAttributes/compressedSize``
- ``Tracing/SpanAttributes/RpcAttributes/MessageAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/RpcAttributes/MessageAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/RpcAttributes/MessageAttributes/NestedSpanAttributes/uncompressedSize``
- ``Tracing/SpanAttributes/RpcAttributes/NestedSpanAttributes/method``
- ``Tracing/SpanAttributes/RpcAttributes/NestedSpanAttributes/service``
- ``Tracing/SpanAttributes/RpcAttributes/NestedSpanAttributes/system``
- ``OTelAttribute/rpc/connectRpc/errorCode``
- ``OTelAttribute/rpc/connectRpc/request/metadata``
- ``OTelAttribute/rpc/connectRpc/response/metadata``
- ``OTelAttribute/rpc/grpc/request/metadata``
- ``OTelAttribute/rpc/grpc/response/metadata``
- ``OTelAttribute/rpc/grpc/statusCode``
- ``OTelAttribute/rpc/jsonrpc/errorCode``
- ``OTelAttribute/rpc/jsonrpc/errorMessage``
- ``OTelAttribute/rpc/jsonrpc/requestId``
- ``OTelAttribute/rpc/jsonrpc/version``
- ``OTelAttribute/rpc/message/compressedSize``
- ``OTelAttribute/rpc/message/id``
- ``OTelAttribute/rpc/message/type``
- ``OTelAttribute/rpc/message/uncompressedSize``
- ``OTelAttribute/rpc/method``
- ``OTelAttribute/rpc/service``
- ``OTelAttribute/rpc/system``

### Deprecated RPC Attributes

- ``Tracing/SpanAttributes/MessageAttributes/NestedSpanAttributes/compressedSize``
- ``Tracing/SpanAttributes/MessageAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/MessageAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/MessageAttributes/NestedSpanAttributes/uncompressedSize``
- ``OTelAttribute/message/compressedSize``
- ``OTelAttribute/message/id``
- ``OTelAttribute/message/type``
- ``OTelAttribute/message/uncompressedSize``

### Security Rule

- ``Tracing/SpanAttributes/SecurityRuleAttributes/NestedSpanAttributes/category``
- ``Tracing/SpanAttributes/SecurityRuleAttributes/NestedSpanAttributes/description``
- ``Tracing/SpanAttributes/SecurityRuleAttributes/NestedSpanAttributes/license``
- ``Tracing/SpanAttributes/SecurityRuleAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/SecurityRuleAttributes/NestedSpanAttributes/reference``
- ``Tracing/SpanAttributes/SecurityRuleAttributes/RulesetAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/SecurityRuleAttributes/NestedSpanAttributes/uuid``
- ``Tracing/SpanAttributes/SecurityRuleAttributes/NestedSpanAttributes/version``
- ``OTelAttribute/securityRule/category``
- ``OTelAttribute/securityRule/description``
- ``OTelAttribute/securityRule/license``
- ``OTelAttribute/securityRule/name``
- ``OTelAttribute/securityRule/reference``
- ``OTelAttribute/securityRule/ruleset/name``
- ``OTelAttribute/securityRule/uuid``
- ``OTelAttribute/securityRule/version``

### Server Attributes

- ``Tracing/SpanAttributes/ServerAttributes/NestedSpanAttributes/address``
- ``Tracing/SpanAttributes/ServerAttributes/NestedSpanAttributes/port``
- ``OTelAttribute/server/address``
- ``OTelAttribute/server/port``

### Service Attributes

- ``Tracing/SpanAttributes/ServiceAttributes/InstanceAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/ServiceAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/ServiceAttributes/NestedSpanAttributes/namespace``
- ``Tracing/SpanAttributes/ServiceAttributes/NestedSpanAttributes/version``
- ``OTelAttribute/service/instance/id``
- ``OTelAttribute/service/name``
- ``OTelAttribute/service/namespace``
- ``OTelAttribute/service/version``

### Session Attributes

- ``Tracing/SpanAttributes/SessionAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/SessionAttributes/NestedSpanAttributes/previousId``
- ``OTelAttribute/session/id``
- ``OTelAttribute/session/previousId``

### Source Attributes

- ``Tracing/SpanAttributes/SourceAttributes/NestedSpanAttributes/address``
- ``Tracing/SpanAttributes/SourceAttributes/NestedSpanAttributes/port``
- ``OTelAttribute/source/address``
- ``OTelAttribute/source/port``

### General System Attributes

- ``Tracing/SpanAttributes/SystemAttributes/NestedSpanAttributes/device``
- ``OTelAttribute/system/device``

### Deprecated System Attributes

- ``Tracing/SpanAttributes/SystemAttributes/CpuAttributes/NestedSpanAttributes/logicalNumber``
- ``Tracing/SpanAttributes/SystemAttributes/CpuAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/SystemAttributes/NetworkAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/SystemAttributes/PagingAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/SystemAttributes/ProcessAttributes/NestedSpanAttributes/status``
- ``Tracing/SpanAttributes/SystemAttributes/ProcessesAttributes/NestedSpanAttributes/status``
- ``OTelAttribute/system/cpu/logicalNumber``
- ``OTelAttribute/system/cpu/state``
- ``OTelAttribute/system/network/state``
- ``OTelAttribute/system/paging/type``
- ``OTelAttribute/system/process/status``
- ``OTelAttribute/system/processes/status``

### Filesystem Attributes

- ``Tracing/SpanAttributes/SystemAttributes/FilesystemAttributes/NestedSpanAttributes/mode``
- ``Tracing/SpanAttributes/SystemAttributes/FilesystemAttributes/NestedSpanAttributes/mountpoint``
- ``Tracing/SpanAttributes/SystemAttributes/FilesystemAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/SystemAttributes/FilesystemAttributes/NestedSpanAttributes/type``
- ``OTelAttribute/system/filesystem/mode``
- ``OTelAttribute/system/filesystem/mountpoint``
- ``OTelAttribute/system/filesystem/state``
- ``OTelAttribute/system/filesystem/type``

### System Memory Attributes

- ``Tracing/SpanAttributes/SystemAttributes/MemoryAttributes/NestedSpanAttributes/state``
- ``OTelAttribute/system/memory/state``

### System Paging Attributes

- ``Tracing/SpanAttributes/SystemAttributes/PagingAttributes/NestedSpanAttributes/direction``
- ``Tracing/SpanAttributes/SystemAttributes/PagingAttributes/FaultAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/SystemAttributes/PagingAttributes/NestedSpanAttributes/state``
- ``OTelAttribute/system/paging/direction``
- ``OTelAttribute/system/paging/fault/type``
- ``OTelAttribute/system/paging/state``

### Telemetry Attributes

- ``Tracing/SpanAttributes/TelemetryAttributes/DistroAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/TelemetryAttributes/DistroAttributes/NestedSpanAttributes/version``
- ``Tracing/SpanAttributes/TelemetryAttributes/SdkAttributes/NestedSpanAttributes/language``
- ``Tracing/SpanAttributes/TelemetryAttributes/SdkAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/TelemetryAttributes/SdkAttributes/NestedSpanAttributes/version``
- ``OTelAttribute/telemetry/distro/name``
- ``OTelAttribute/telemetry/distro/version``
- ``OTelAttribute/telemetry/sdk/language``
- ``OTelAttribute/telemetry/sdk/name``
- ``OTelAttribute/telemetry/sdk/version``

### Test Attributes

- ``Tracing/SpanAttributes/TestAttributes/CaseAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/TestAttributes/CaseAttributes/ResultAttributes/NestedSpanAttributes/status``
- ``Tracing/SpanAttributes/TestAttributes/SuiteAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/TestAttributes/SuiteAttributes/RunAttributes/NestedSpanAttributes/status``
- ``OTelAttribute/test/case/name``
- ``OTelAttribute/test/case/result/status``
- ``OTelAttribute/test/suite/name``
- ``OTelAttribute/test/suite/run/status``

### Thread Attributes

- ``Tracing/SpanAttributes/ThreadAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/ThreadAttributes/NestedSpanAttributes/name``
- ``OTelAttribute/thread/id``
- ``OTelAttribute/thread/name``

### TLS Attributes

- ``Tracing/SpanAttributes/TlsAttributes/NestedSpanAttributes/cipher``
- ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/certificate``
- ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/certificateChain``
- ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/HashAttributes/NestedSpanAttributes/md5``
- ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/HashAttributes/NestedSpanAttributes/sha1``
- ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/HashAttributes/NestedSpanAttributes/sha256``
- ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/issuer``
- ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/ja3``
- ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/notAfter``
- ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/notBefore``
- ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/subject``
- ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/supportedCiphers``
- ``Tracing/SpanAttributes/TlsAttributes/NestedSpanAttributes/curve``
- ``Tracing/SpanAttributes/TlsAttributes/NestedSpanAttributes/established``
- ``Tracing/SpanAttributes/TlsAttributes/NestedSpanAttributes/nextProtocol``
- ``Tracing/SpanAttributes/TlsAttributes/ProtocolAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/TlsAttributes/ProtocolAttributes/NestedSpanAttributes/version``
- ``Tracing/SpanAttributes/TlsAttributes/NestedSpanAttributes/resumed``
- ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/NestedSpanAttributes/certificate``
- ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/NestedSpanAttributes/certificateChain``
- ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/HashAttributes/NestedSpanAttributes/md5``
- ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/HashAttributes/NestedSpanAttributes/sha1``
- ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/HashAttributes/NestedSpanAttributes/sha256``
- ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/NestedSpanAttributes/issuer``
- ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/NestedSpanAttributes/ja3s``
- ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/NestedSpanAttributes/notAfter``
- ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/NestedSpanAttributes/notBefore``
- ``Tracing/SpanAttributes/TlsAttributes/ServerAttributes/NestedSpanAttributes/subject``
- ``OTelAttribute/tls/cipher``
- ``OTelAttribute/tls/client/certificate``
- ``OTelAttribute/tls/client/certificateChain``
- ``OTelAttribute/tls/client/hash/md5``
- ``OTelAttribute/tls/client/hash/sha1``
- ``OTelAttribute/tls/client/hash/sha256``
- ``OTelAttribute/tls/client/issuer``
- ``OTelAttribute/tls/client/ja3``
- ``OTelAttribute/tls/client/notAfter``
- ``OTelAttribute/tls/client/notBefore``
- ``OTelAttribute/tls/client/subject``
- ``OTelAttribute/tls/client/supportedCiphers``
- ``OTelAttribute/tls/curve``
- ``OTelAttribute/tls/established``
- ``OTelAttribute/tls/nextProtocol``
- ``OTelAttribute/tls/protocol/name``
- ``OTelAttribute/tls/protocol/version``
- ``OTelAttribute/tls/resumed``
- ``OTelAttribute/tls/server/certificate``
- ``OTelAttribute/tls/server/certificateChain``
- ``OTelAttribute/tls/server/hash/md5``
- ``OTelAttribute/tls/server/hash/sha1``
- ``OTelAttribute/tls/server/hash/sha256``
- ``OTelAttribute/tls/server/issuer``
- ``OTelAttribute/tls/server/ja3s``
- ``OTelAttribute/tls/server/notAfter``
- ``OTelAttribute/tls/server/notBefore``
- ``OTelAttribute/tls/server/subject``

### registry.tls.deprecated

- ``Tracing/SpanAttributes/TlsAttributes/ClientAttributes/NestedSpanAttributes/serverName``
- ``OTelAttribute/tls/client/serverName``

### URL Attributes

- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/domain``
- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/extension``
- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/fragment``
- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/full``
- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/original``
- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/path``
- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/port``
- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/query``
- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/registeredDomain``
- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/scheme``
- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/subdomain``
- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/template``
- ``Tracing/SpanAttributes/UrlAttributes/NestedSpanAttributes/topLevelDomain``
- ``OTelAttribute/url/domain``
- ``OTelAttribute/url/extension``
- ``OTelAttribute/url/fragment``
- ``OTelAttribute/url/full``
- ``OTelAttribute/url/original``
- ``OTelAttribute/url/path``
- ``OTelAttribute/url/port``
- ``OTelAttribute/url/query``
- ``OTelAttribute/url/registeredDomain``
- ``OTelAttribute/url/scheme``
- ``OTelAttribute/url/subdomain``
- ``OTelAttribute/url/template``
- ``OTelAttribute/url/topLevelDomain``

### User Attributes

- ``Tracing/SpanAttributes/UserAttributes/NestedSpanAttributes/email``
- ``Tracing/SpanAttributes/UserAttributes/NestedSpanAttributes/fullName``
- ``Tracing/SpanAttributes/UserAttributes/NestedSpanAttributes/hash``
- ``Tracing/SpanAttributes/UserAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/UserAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/UserAttributes/NestedSpanAttributes/roles``
- ``OTelAttribute/user/email``
- ``OTelAttribute/user/fullName``
- ``OTelAttribute/user/hash``
- ``OTelAttribute/user/id``
- ``OTelAttribute/user/name``
- ``OTelAttribute/user/roles``

### User-agent Attributes

- ``Tracing/SpanAttributes/UserAgentAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/UserAgentAttributes/NestedSpanAttributes/original``
- ``Tracing/SpanAttributes/UserAgentAttributes/NestedSpanAttributes/version``
- ``OTelAttribute/userAgent/name``
- ``OTelAttribute/userAgent/original``
- ``OTelAttribute/userAgent/version``

### User-agent OS Attributes

- ``Tracing/SpanAttributes/UserAgentAttributes/OsAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/UserAgentAttributes/OsAttributes/NestedSpanAttributes/version``
- ``Tracing/SpanAttributes/UserAgentAttributes/SyntheticAttributes/NestedSpanAttributes/type``
- ``OTelAttribute/userAgent/os/name``
- ``OTelAttribute/userAgent/os/version``
- ``OTelAttribute/userAgent/synthetic/type``

### registry.vcs.deprecated

- ``Tracing/SpanAttributes/VcsAttributes/RepositoryAttributes/ChangeAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/VcsAttributes/RepositoryAttributes/ChangeAttributes/NestedSpanAttributes/title``
- ``Tracing/SpanAttributes/VcsAttributes/RepositoryAttributes/RefAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/VcsAttributes/RepositoryAttributes/RefAttributes/NestedSpanAttributes/revision``
- ``Tracing/SpanAttributes/VcsAttributes/RepositoryAttributes/RefAttributes/NestedSpanAttributes/type``
- ``OTelAttribute/vcs/repository/change/id``
- ``OTelAttribute/vcs/repository/change/title``
- ``OTelAttribute/vcs/repository/ref/name``
- ``OTelAttribute/vcs/repository/ref/revision``
- ``OTelAttribute/vcs/repository/ref/type``

### VCS Repository Attributes

- ``Tracing/SpanAttributes/VcsAttributes/ChangeAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/VcsAttributes/ChangeAttributes/NestedSpanAttributes/state``
- ``Tracing/SpanAttributes/VcsAttributes/ChangeAttributes/NestedSpanAttributes/title``
- ``Tracing/SpanAttributes/VcsAttributes/LineChangeAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/VcsAttributes/OwnerAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/VcsAttributes/ProviderAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/VcsAttributes/RefAttributes/BaseAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/VcsAttributes/RefAttributes/BaseAttributes/NestedSpanAttributes/revision``
- ``Tracing/SpanAttributes/VcsAttributes/RefAttributes/BaseAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/VcsAttributes/RefAttributes/HeadAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/VcsAttributes/RefAttributes/HeadAttributes/NestedSpanAttributes/revision``
- ``Tracing/SpanAttributes/VcsAttributes/RefAttributes/HeadAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/VcsAttributes/RefAttributes/NestedSpanAttributes/type``
- ``Tracing/SpanAttributes/VcsAttributes/RepositoryAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/VcsAttributes/RepositoryAttributes/UrlAttributes/NestedSpanAttributes/full``
- ``Tracing/SpanAttributes/VcsAttributes/RevisionDeltaAttributes/NestedSpanAttributes/direction``
- ``OTelAttribute/vcs/change/id``
- ``OTelAttribute/vcs/change/state``
- ``OTelAttribute/vcs/change/title``
- ``OTelAttribute/vcs/lineChange/type``
- ``OTelAttribute/vcs/owner/name``
- ``OTelAttribute/vcs/provider/name``
- ``OTelAttribute/vcs/ref/base/name``
- ``OTelAttribute/vcs/ref/base/revision``
- ``OTelAttribute/vcs/ref/base/type``
- ``OTelAttribute/vcs/ref/head/name``
- ``OTelAttribute/vcs/ref/head/revision``
- ``OTelAttribute/vcs/ref/head/type``
- ``OTelAttribute/vcs/ref/type``
- ``OTelAttribute/vcs/repository/name``
- ``OTelAttribute/vcs/repository/url/full``
- ``OTelAttribute/vcs/revisionDelta/direction``

### Web Engine Attributes

- ``Tracing/SpanAttributes/WebengineAttributes/NestedSpanAttributes/description``
- ``Tracing/SpanAttributes/WebengineAttributes/NestedSpanAttributes/name``
- ``Tracing/SpanAttributes/WebengineAttributes/NestedSpanAttributes/version``
- ``OTelAttribute/webengine/description``
- ``OTelAttribute/webengine/name``
- ``OTelAttribute/webengine/version``

### z/OS attributes

- ``Tracing/SpanAttributes/ZosAttributes/SmfAttributes/NestedSpanAttributes/id``
- ``Tracing/SpanAttributes/ZosAttributes/SysplexAttributes/NestedSpanAttributes/name``
- ``OTelAttribute/zos/smf/id``
- ``OTelAttribute/zos/sysplex/name``
