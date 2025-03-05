// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `ios` namespace
    public var ios: IosAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct IosAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `ios.state`: Deprecated use the `device.app.lifecycle` event definition including `ios.state` as a payload field instead. 
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: enum
            ///     - `active`: The app has become `active`. Associated with UIKit notification `applicationDidBecomeActive`.
            ///     - `inactive`: The app is now `inactive`. Associated with UIKit notification `applicationWillResignActive`.
            ///     - `background`: The app is now in the background. This value is associated with UIKit notification `applicationDidEnterBackground`.
            ///     - `foreground`: The app is now in the foreground. This value is associated with UIKit notification `applicationWillEnterForeground`.
            ///     - `terminate`: The app is about to terminate. Associated with UIKit notification `applicationWillTerminate`.
            /// 
            /// The iOS lifecycle states are defined in the [UIApplicationDelegate documentation](https://developer.apple.com/documentation/uikit/uiapplicationdelegate#1656902), and from which the `OS terminology` column values are derived. 
            @available(*, deprecated, message: "Moved to a payload field of `device.app.lifecycle`.")
            public var state: Self.Key<StateEnum> { .init(name: OTelAttributes.ios.state) }
            
            public struct StateEnum: SpanAttributeConvertible {
                private let rawValue: String
                /// `active`: The app has become `active`. Associated with UIKit notification `applicationDidBecomeActive`.
                public static let active = Self.init(rawValue: "active")
                /// `inactive`: The app is now `inactive`. Associated with UIKit notification `applicationWillResignActive`.
                public static let inactive = Self.init(rawValue: "inactive")
                /// `background`: The app is now in the background. This value is associated with UIKit notification `applicationDidEnterBackground`.
                public static let background = Self.init(rawValue: "background")
                /// `foreground`: The app is now in the foreground. This value is associated with UIKit notification `applicationWillEnterForeground`.
                public static let foreground = Self.init(rawValue: "foreground")
                /// `terminate`: The app is about to terminate. Associated with UIKit notification `applicationWillTerminate`.
                public static let terminate = Self.init(rawValue: "terminate")
                public func toSpanAttribute() -> Tracing.SpanAttribute {
                    return .string(self.rawValue)
                }
            }
        }
    
    
    }
}