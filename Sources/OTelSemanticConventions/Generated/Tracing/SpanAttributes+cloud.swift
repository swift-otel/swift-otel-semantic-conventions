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
    /// `cloud` namespace
    public var cloud: CloudAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }

    @dynamicMemberLookup
    public struct CloudAttributes: SpanAttributeNamespace {
        public var attributes: Tracing.SpanAttributes

        public init(attributes: Tracing.SpanAttributes) {
            self.attributes = attributes
        }

        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}

            /// `cloud.availability_zone` **UNSTABLE**: Cloud regions often have multiple, isolated locations known as zones to increase availability. Availability zone represents the zone where the resource is running.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Example: `us-east-1c`
            ///
            /// Availability zones are called "zones" on Alibaba Cloud and Google Cloud.
            public var availabilityZone: SpanAttributeKey<String> { .init(name: OTelAttribute.cloud.availabilityZone) }

            /// `cloud.platform` **UNSTABLE**: The cloud platform in use.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `akamai_cloud.compute`: Akamai Cloud Compute
            ///     - `alibaba_cloud_ecs`: Alibaba Cloud Elastic Compute Service
            ///     - `alibaba_cloud_fc`: Alibaba Cloud Function Compute
            ///     - `alibaba_cloud_openshift`: Red Hat OpenShift on Alibaba Cloud
            ///     - `aws_ec2`: AWS Elastic Compute Cloud
            ///     - `aws_ecs`: AWS Elastic Container Service
            ///     - `aws_eks`: AWS Elastic Kubernetes Service
            ///     - `aws_lambda`: AWS Lambda
            ///     - `aws_elastic_beanstalk`: AWS Elastic Beanstalk
            ///     - `aws_app_runner`: AWS App Runner
            ///     - `aws_openshift`: Red Hat OpenShift on AWS (ROSA)
            ///     - `azure.vm`: Azure Virtual Machines
            ///     - `azure.container_apps`: Azure Container Apps
            ///     - `azure.container_instances`: Azure Container Instances
            ///     - `azure.aks`: Azure Kubernetes Service
            ///     - `azure.functions`: Azure Functions
            ///     - `azure.app_service`: Azure App Service
            ///     - `azure.openshift`: Azure Red Hat OpenShift
            ///     - `azure_vm`: Azure Virtual Machines
            ///     - `azure_container_apps`: Azure Container Apps
            ///     - `azure_container_instances`: Azure Container Instances
            ///     - `azure_aks`: Azure Kubernetes Service
            ///     - `azure_functions`: Azure Functions
            ///     - `azure_app_service`: Azure App Service
            ///     - `azure_openshift`: Azure Red Hat OpenShift
            ///     - `gcp.agent_engine`: Google Vertex AI Agent Engine
            ///     - `gcp_bare_metal_solution`: Google Bare Metal Solution (BMS)
            ///     - `gcp_compute_engine`: Google Cloud Compute Engine (GCE)
            ///     - `gcp_cloud_run`: Google Cloud Run
            ///     - `gcp_kubernetes_engine`: Google Cloud Kubernetes Engine (GKE)
            ///     - `gcp_cloud_functions`: Google Cloud Functions (GCF)
            ///     - `gcp_app_engine`: Google Cloud App Engine (GAE)
            ///     - `gcp_openshift`: Red Hat OpenShift on Google Cloud
            ///     - `hetzner.cloud_server`: Server on Hetzner Cloud
            ///     - `ibm_cloud_openshift`: Red Hat OpenShift on IBM Cloud
            ///     - `oracle_cloud_compute`: Compute on Oracle Cloud Infrastructure (OCI)
            ///     - `oracle_cloud_oke`: Kubernetes Engine (OKE) on Oracle Cloud Infrastructure (OCI)
            ///     - `tencent_cloud_cvm`: Tencent Cloud Cloud Virtual Machine (CVM)
            ///     - `tencent_cloud_eks`: Tencent Cloud Elastic Kubernetes Service (EKS)
            ///     - `tencent_cloud_scf`: Tencent Cloud Serverless Cloud Function (SCF)
            ///     - `vultr.cloud_compute`: Vultr Cloud Compute
            ///
            /// The prefix of the service SHOULD match the one specified in `cloud.provider`.
            public var platform: SpanAttributeKey<PlatformEnum> { .init(name: OTelAttribute.cloud.platform) }

            public struct PlatformEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }

            /// `cloud.provider` **UNSTABLE**: Name of the cloud provider.
            ///
            /// - Stability: development
            /// - Type: enum
            ///     - `akamai_cloud`: Akamai Cloud
            ///     - `alibaba_cloud`: Alibaba Cloud
            ///     - `aws`: Amazon Web Services
            ///     - `azure`: Microsoft Azure
            ///     - `gcp`: Google Cloud Platform
            ///     - `heroku`: Heroku Platform as a Service
            ///     - `hetzner`: Hetzner
            ///     - `ibm_cloud`: IBM Cloud
            ///     - `oracle_cloud`: Oracle Cloud Infrastructure (OCI)
            ///     - `tencent_cloud`: Tencent Cloud
            ///     - `vultr`: Vultr
            public var provider: SpanAttributeKey<ProviderEnum> { .init(name: OTelAttribute.cloud.provider) }

            public struct ProviderEnum: SpanAttributeConvertible, RawRepresentable, Sendable {
                public let rawValue: String
                public init(rawValue: String) {
                    self.rawValue = rawValue
                }
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    .string(self.rawValue)
                }
            }

            /// `cloud.region` **UNSTABLE**: The geographical region within a cloud provider. When associated with a resource, this attribute specifies the region where the resource operates. When calling services or APIs deployed on a cloud, this attribute identifies the region where the called destination is deployed.
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `us-central1`
            ///     - `us-east-1`
            ///
            /// Refer to your provider's docs to see the available regions, for example [Alibaba Cloud regions](https://www.alibabacloud.com/help/doc-detail/40654.htm), [AWS regions](https://aws.amazon.com/about-aws/global-infrastructure/regions_az/), [Azure regions](https://azure.microsoft.com/global-infrastructure/geographies/), [Google Cloud regions](https://cloud.google.com/about/locations), or [Tencent Cloud regions](https://www.tencentcloud.com/document/product/213/6091).
            public var region: SpanAttributeKey<String> { .init(name: OTelAttribute.cloud.region) }

            /// `cloud.resource_id` **UNSTABLE**: Cloud provider-specific native identifier of the monitored cloud resource (e.g. an [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) on AWS, a [fully qualified resource ID](https://learn.microsoft.com/rest/api/resources/resources/get-by-id) on Azure, a [full resource name](https://google.aip.dev/122#full-resource-names) on GCP)
            ///
            /// - Stability: development
            /// - Type: string
            /// - Examples:
            ///     - `arn:aws:lambda:REGION:ACCOUNT_ID:function:my-function`
            ///     - `//run.googleapis.com/projects/PROJECT_ID/locations/LOCATION_ID/services/SERVICE_ID`
            ///     - `/subscriptions/<SUBSCRIPTION_GUID>/resourceGroups/<RG>/providers/Microsoft.Web/sites/<FUNCAPP>/functions/<FUNC>`
            ///
            /// On some cloud providers, it may not be possible to determine the full ID at startup,
            /// so it may be necessary to set `cloud.resource_id` as a span attribute instead.
            ///
            /// The exact value to use for `cloud.resource_id` depends on the cloud provider.
            /// The following well-known definitions MUST be used if you set this attribute and they apply:
            ///
            /// - **AWS Lambda:** The function [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).
            ///   Take care not to use the "invoked ARN" directly but replace any
            ///   [alias suffix](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html)
            ///   with the resolved function version, as the same runtime instance may be invocable with
            ///   multiple different aliases.
            /// - **GCP:** The [URI of the resource](https://cloud.google.com/iam/docs/full-resource-names)
            /// - **Azure:** The [Fully Qualified Resource ID](https://learn.microsoft.com/rest/api/resources/resources/get-by-id) of the invoked function,
            ///   *not* the function app, having the form
            ///   `/subscriptions/<SUBSCRIPTION_GUID>/resourceGroups/<RG>/providers/Microsoft.Web/sites/<FUNCAPP>/functions/<FUNC>`.
            ///   This means that a span attribute MUST be used, as an Azure function app can host multiple functions that would usually share
            ///   a TracerProvider.
            public var resourceId: SpanAttributeKey<String> { .init(name: OTelAttribute.cloud.resourceId) }
        }

        /// `cloud.account` namespace
        public var account: AccountAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }

        @dynamicMemberLookup
        public struct AccountAttributes: SpanAttributeNamespace {
            public var attributes: Tracing.SpanAttributes

            public init(attributes: Tracing.SpanAttributes) {
                self.attributes = attributes
            }

            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}

                /// `cloud.account.id` **UNSTABLE**: The cloud account ID the resource is assigned to.
                ///
                /// - Stability: development
                /// - Type: string
                /// - Examples:
                ///     - `111111111111`
                ///     - `opentelemetry`
                public var id: SpanAttributeKey<String> { .init(name: OTelAttribute.cloud.account.id) }
            }
        }
    }
    #endif
}

#endif
