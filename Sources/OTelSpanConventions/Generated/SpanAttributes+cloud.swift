// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
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
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `cloud.availability_zone`: Cloud regions often have multiple, isolated locations known as zones to increase availability. Availability zone represents the zone where the resource is running. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Availability zones are called "zones" on Alibaba Cloud and Google Cloud. 
            /// 
            /// - Example: `us-east-1c`
            public var availabilityZone: Self.Key<String> { .init(name: OTelAttribute.cloud.availabilityZone) }
    
            /// `cloud.platform`: The cloud platform in use. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
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
            ///     - `azure_vm`: Azure Virtual Machines
            ///     - `azure_container_apps`: Azure Container Apps
            ///     - `azure_container_instances`: Azure Container Instances
            ///     - `azure_aks`: Azure Kubernetes Service
            ///     - `azure_functions`: Azure Functions
            ///     - `azure_app_service`: Azure App Service
            ///     - `azure_openshift`: Azure Red Hat OpenShift
            ///     - `gcp_bare_metal_solution`: Google Bare Metal Solution (BMS)
            ///     - `gcp_compute_engine`: Google Cloud Compute Engine (GCE)
            ///     - `gcp_cloud_run`: Google Cloud Run
            ///     - `gcp_kubernetes_engine`: Google Cloud Kubernetes Engine (GKE)
            ///     - `gcp_cloud_functions`: Google Cloud Functions (GCF)
            ///     - `gcp_app_engine`: Google Cloud App Engine (GAE)
            ///     - `gcp_openshift`: Red Hat OpenShift on Google Cloud
            ///     - `ibm_cloud_openshift`: Red Hat OpenShift on IBM Cloud
            ///     - `tencent_cloud_cvm`: Tencent Cloud Cloud Virtual Machine (CVM)
            ///     - `tencent_cloud_eks`: Tencent Cloud Elastic Kubernetes Service (EKS)
            ///     - `tencent_cloud_scf`: Tencent Cloud Serverless Cloud Function (SCF)
            /// 
            /// The prefix of the service SHOULD match the one specified in `cloud.provider`. 
            public var platform: Self.Key<PlatformEnum> { .init(name: OTelAttribute.cloud.platform) }
            
            public struct PlatformEnum: SpanAttributeConvertible {
                private let rawValue: String
                /// `alibaba_cloud_ecs`: Alibaba Cloud Elastic Compute Service
                public static let alibabaCloudEcs = Self.init(rawValue: "alibaba_cloud_ecs")
                /// `alibaba_cloud_fc`: Alibaba Cloud Function Compute
                public static let alibabaCloudFc = Self.init(rawValue: "alibaba_cloud_fc")
                /// `alibaba_cloud_openshift`: Red Hat OpenShift on Alibaba Cloud
                public static let alibabaCloudOpenshift = Self.init(rawValue: "alibaba_cloud_openshift")
                /// `aws_ec2`: AWS Elastic Compute Cloud
                public static let awsEc2 = Self.init(rawValue: "aws_ec2")
                /// `aws_ecs`: AWS Elastic Container Service
                public static let awsEcs = Self.init(rawValue: "aws_ecs")
                /// `aws_eks`: AWS Elastic Kubernetes Service
                public static let awsEks = Self.init(rawValue: "aws_eks")
                /// `aws_lambda`: AWS Lambda
                public static let awsLambda = Self.init(rawValue: "aws_lambda")
                /// `aws_elastic_beanstalk`: AWS Elastic Beanstalk
                public static let awsElasticBeanstalk = Self.init(rawValue: "aws_elastic_beanstalk")
                /// `aws_app_runner`: AWS App Runner
                public static let awsAppRunner = Self.init(rawValue: "aws_app_runner")
                /// `aws_openshift`: Red Hat OpenShift on AWS (ROSA)
                public static let awsOpenshift = Self.init(rawValue: "aws_openshift")
                /// `azure_vm`: Azure Virtual Machines
                public static let azureVm = Self.init(rawValue: "azure_vm")
                /// `azure_container_apps`: Azure Container Apps
                public static let azureContainerApps = Self.init(rawValue: "azure_container_apps")
                /// `azure_container_instances`: Azure Container Instances
                public static let azureContainerInstances = Self.init(rawValue: "azure_container_instances")
                /// `azure_aks`: Azure Kubernetes Service
                public static let azureAks = Self.init(rawValue: "azure_aks")
                /// `azure_functions`: Azure Functions
                public static let azureFunctions = Self.init(rawValue: "azure_functions")
                /// `azure_app_service`: Azure App Service
                public static let azureAppService = Self.init(rawValue: "azure_app_service")
                /// `azure_openshift`: Azure Red Hat OpenShift
                public static let azureOpenshift = Self.init(rawValue: "azure_openshift")
                /// `gcp_bare_metal_solution`: Google Bare Metal Solution (BMS)
                public static let gcpBareMetalSolution = Self.init(rawValue: "gcp_bare_metal_solution")
                /// `gcp_compute_engine`: Google Cloud Compute Engine (GCE)
                public static let gcpComputeEngine = Self.init(rawValue: "gcp_compute_engine")
                /// `gcp_cloud_run`: Google Cloud Run
                public static let gcpCloudRun = Self.init(rawValue: "gcp_cloud_run")
                /// `gcp_kubernetes_engine`: Google Cloud Kubernetes Engine (GKE)
                public static let gcpKubernetesEngine = Self.init(rawValue: "gcp_kubernetes_engine")
                /// `gcp_cloud_functions`: Google Cloud Functions (GCF)
                public static let gcpCloudFunctions = Self.init(rawValue: "gcp_cloud_functions")
                /// `gcp_app_engine`: Google Cloud App Engine (GAE)
                public static let gcpAppEngine = Self.init(rawValue: "gcp_app_engine")
                /// `gcp_openshift`: Red Hat OpenShift on Google Cloud
                public static let gcpOpenshift = Self.init(rawValue: "gcp_openshift")
                /// `ibm_cloud_openshift`: Red Hat OpenShift on IBM Cloud
                public static let ibmCloudOpenshift = Self.init(rawValue: "ibm_cloud_openshift")
                /// `tencent_cloud_cvm`: Tencent Cloud Cloud Virtual Machine (CVM)
                public static let tencentCloudCvm = Self.init(rawValue: "tencent_cloud_cvm")
                /// `tencent_cloud_eks`: Tencent Cloud Elastic Kubernetes Service (EKS)
                public static let tencentCloudEks = Self.init(rawValue: "tencent_cloud_eks")
                /// `tencent_cloud_scf`: Tencent Cloud Serverless Cloud Function (SCF)
                public static let tencentCloudScf = Self.init(rawValue: "tencent_cloud_scf")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
    
            /// `cloud.provider`: Name of the cloud provider. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `alibaba_cloud`: Alibaba Cloud
            ///     - `aws`: Amazon Web Services
            ///     - `azure`: Microsoft Azure
            ///     - `gcp`: Google Cloud Platform
            ///     - `heroku`: Heroku Platform as a Service
            ///     - `ibm_cloud`: IBM Cloud
            ///     - `tencent_cloud`: Tencent Cloud
            public var provider: Self.Key<ProviderEnum> { .init(name: OTelAttribute.cloud.provider) }
            
            public struct ProviderEnum: SpanAttributeConvertible {
                private let rawValue: String
                /// `alibaba_cloud`: Alibaba Cloud
                public static let alibabaCloud = Self.init(rawValue: "alibaba_cloud")
                /// `aws`: Amazon Web Services
                public static let aws = Self.init(rawValue: "aws")
                /// `azure`: Microsoft Azure
                public static let azure = Self.init(rawValue: "azure")
                /// `gcp`: Google Cloud Platform
                public static let gcp = Self.init(rawValue: "gcp")
                /// `heroku`: Heroku Platform as a Service
                public static let heroku = Self.init(rawValue: "heroku")
                /// `ibm_cloud`: IBM Cloud
                public static let ibmCloud = Self.init(rawValue: "ibm_cloud")
                /// `tencent_cloud`: Tencent Cloud
                public static let tencentCloud = Self.init(rawValue: "tencent_cloud")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
    
            /// `cloud.region`: The geographical region the resource is running. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// Refer to your provider's docs to see the available regions, for example [Alibaba Cloud regions](https://www.alibabacloud.com/help/doc-detail/40654.htm), [AWS regions](https://aws.amazon.com/about-aws/global-infrastructure/regions_az/), [Azure regions](https://azure.microsoft.com/global-infrastructure/geographies/), [Google Cloud regions](https://cloud.google.com/about/locations), or [Tencent Cloud regions](https://www.tencentcloud.com/document/product/213/6091). 
            /// 
            /// - Examples:
            ///     - `us-central1`
            ///     - `us-east-1`
            public var region: Self.Key<String> { .init(name: OTelAttribute.cloud.region) }
    
            /// `cloud.resource_id`: Cloud provider-specific native identifier of the monitored cloud resource (e.g. an [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) on AWS, a [fully qualified resource ID](https://learn.microsoft.com/rest/api/resources/resources/get-by-id) on Azure, a [full resource name](https://cloud.google.com/apis/design/resource_names#full_resource_name) on GCP) 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// On some cloud providers, it may not be possible to determine the full ID at startup, so it may be necessary to set `cloud.resource_id` as a span attribute instead.  The exact value to use for `cloud.resource_id` depends on the cloud provider. The following well-known definitions MUST be used if you set this attribute and they apply:  - **AWS Lambda:** The function [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).   Take care not to use the "invoked ARN" directly but replace any   [alias suffix](https://docs.aws.amazon.com/lambda/latest/dg/configuration-aliases.html)   with the resolved function version, as the same runtime instance may be invocable with   multiple different aliases. - **GCP:** The [URI of the resource](https://cloud.google.com/iam/docs/full-resource-names) - **Azure:** The [Fully Qualified Resource ID](https://docs.microsoft.com/rest/api/resources/resources/get-by-id) of the invoked function,   *not* the function app, having the form   `/subscriptions/<SUBSCRIPTION_GUID>/resourceGroups/<RG>/providers/Microsoft.Web/sites/<FUNCAPP>/functions/<FUNC>`.   This means that a span attribute MUST be used, as an Azure function app can host multiple functions that would usually share   a TracerProvider. 
            /// 
            /// - Examples:
            ///     - `arn:aws:lambda:REGION:ACCOUNT_ID:function:my-function`
            ///     - `//run.googleapis.com/projects/PROJECT_ID/locations/LOCATION_ID/services/SERVICE_ID`
            ///     - `/subscriptions/<SUBSCRIPTION_GUID>/resourceGroups/<RG>/providers/Microsoft.Web/sites/<FUNCAPP>/functions/<FUNC>`
            public var resourceId: Self.Key<String> { .init(name: OTelAttribute.cloud.resourceId) }
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
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `cloud.account.id`: The cloud account ID the resource is assigned to. 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Examples:
                ///     - `111111111111`
                ///     - `opentelemetry`
                public var id: Self.Key<String> { .init(name: OTelAttribute.cloud.account.id) }
            }
        
        
        }
    }
}