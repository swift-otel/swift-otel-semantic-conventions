// DO NOT EDIT. This file is generated automatically. See README for details.

// swiftlint:disable all

import OTelConventions
import Tracing

extension SpanAttributes {
    /// `system` namespace
    public var system: SystemAttributes {
        get {
            .init(attributes: self)
        }
        set {
            self = newValue.attributes
        }
    }
    
    @dynamicMemberLookup
    public struct SystemAttributes: SpanAttributeNamespace {
        public var attributes: SpanAttributes
    
        public init(attributes: SpanAttributes) {
            self.attributes = attributes
        }
    
        public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
            public init() {}
            /// `system.device`: The device identifier
            /// 
            /// - Stability: experimental
            /// 
            /// - Type: string
            /// 
            /// - Example: `(identifier)`
            public var device: Self.Key<String> { .init(name: OTelAttributes.system.device) }
        }
    
        /// `system.cpu` namespace
        public var cpu: CpuAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct CpuAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `system.cpu.logical_number`: The logical CPU number [0..n-1]
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: int
                /// 
                /// - Example: `1`
                public var logical_number: Self.Key<Int> { .init(name: OTelAttributes.system.cpu.logical_number) }
        
                /// `system.cpu.state`: Deprecated, use `cpu.mode` instead.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `user`
                ///     - `system`
                ///     - `nice`
                ///     - `idle`
                ///     - `iowait`
                ///     - `interrupt`
                ///     - `steal`
                /// 
                /// - Examples:
                ///     - `idle`
                ///     - `interrupt`
                @available(*, deprecated, message: "Replaced by `cpu.mode`")
                public var state: Self.Key<StateEnum> { .init(name: OTelAttributes.system.cpu.state) }
                
                public struct StateEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `user`
                    public static let user = Self.init(rawValue: "user")
                    /// `system`
                    public static let system = Self.init(rawValue: "system")
                    /// `nice`
                    public static let nice = Self.init(rawValue: "nice")
                    /// `idle`
                    public static let idle = Self.init(rawValue: "idle")
                    /// `iowait`
                    public static let iowait = Self.init(rawValue: "iowait")
                    /// `interrupt`
                    public static let interrupt = Self.init(rawValue: "interrupt")
                    /// `steal`
                    public static let steal = Self.init(rawValue: "steal")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `system.filesystem` namespace
        public var filesystem: FilesystemAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct FilesystemAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `system.filesystem.mode`: The filesystem mode
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `rw, ro`
                public var mode: Self.Key<String> { .init(name: OTelAttributes.system.filesystem.mode) }
        
                /// `system.filesystem.mountpoint`: The filesystem mount path
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: string
                /// 
                /// - Example: `/mnt/data`
                public var mountpoint: Self.Key<String> { .init(name: OTelAttributes.system.filesystem.mountpoint) }
        
                /// `system.filesystem.state`: The filesystem state
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `used`
                ///     - `free`
                ///     - `reserved`
                /// 
                /// - Example: `used`
                public var state: Self.Key<StateEnum> { .init(name: OTelAttributes.system.filesystem.state) }
                
                public struct StateEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `used`
                    public static let used = Self.init(rawValue: "used")
                    /// `free`
                    public static let free = Self.init(rawValue: "free")
                    /// `reserved`
                    public static let reserved = Self.init(rawValue: "reserved")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
        
                /// `system.filesystem.type`: The filesystem type
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `fat32`
                ///     - `exfat`
                ///     - `ntfs`
                ///     - `refs`
                ///     - `hfsplus`
                ///     - `ext4`
                /// 
                /// - Example: `ext4`
                public var type: Self.Key<TypeEnum> { .init(name: OTelAttributes.system.filesystem.type) }
                
                public struct TypeEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `fat32`
                    public static let fat32 = Self.init(rawValue: "fat32")
                    /// `exfat`
                    public static let exfat = Self.init(rawValue: "exfat")
                    /// `ntfs`
                    public static let ntfs = Self.init(rawValue: "ntfs")
                    /// `refs`
                    public static let refs = Self.init(rawValue: "refs")
                    /// `hfsplus`
                    public static let hfsplus = Self.init(rawValue: "hfsplus")
                    /// `ext4`
                    public static let ext4 = Self.init(rawValue: "ext4")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `system.memory` namespace
        public var memory: MemoryAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct MemoryAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `system.memory.state`: The memory state
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `used`
                ///     - `free`
                ///     - `shared`
                ///     - `buffers`
                ///     - `cached`
                /// 
                /// - Examples:
                ///     - `free`
                ///     - `cached`
                public var state: Self.Key<StateEnum> { .init(name: OTelAttributes.system.memory.state) }
                
                public struct StateEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `used`
                    public static let used = Self.init(rawValue: "used")
                    /// `free`
                    public static let free = Self.init(rawValue: "free")
                    /// `shared`
                    @available(*, deprecated, message: "Removed, report shared memory usage with `metric.system.memory.shared` metric")
                    public static let shared = Self.init(rawValue: "shared")
                    /// `buffers`
                    public static let buffers = Self.init(rawValue: "buffers")
                    /// `cached`
                    public static let cached = Self.init(rawValue: "cached")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `system.network` namespace
        public var network: NetworkAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct NetworkAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `system.network.state`: A stateless protocol MUST NOT set this attribute
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `close`
                ///     - `close_wait`
                ///     - `closing`
                ///     - `delete`
                ///     - `established`
                ///     - `fin_wait_1`
                ///     - `fin_wait_2`
                ///     - `last_ack`
                ///     - `listen`
                ///     - `syn_recv`
                ///     - `syn_sent`
                ///     - `time_wait`
                /// 
                /// - Example: `close_wait`
                public var state: Self.Key<StateEnum> { .init(name: OTelAttributes.system.network.state) }
                
                public struct StateEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `close`
                    public static let close = Self.init(rawValue: "close")
                    /// `close_wait`
                    public static let close_wait = Self.init(rawValue: "close_wait")
                    /// `closing`
                    public static let closing = Self.init(rawValue: "closing")
                    /// `delete`
                    public static let delete = Self.init(rawValue: "delete")
                    /// `established`
                    public static let established = Self.init(rawValue: "established")
                    /// `fin_wait_1`
                    public static let fin_wait_1 = Self.init(rawValue: "fin_wait_1")
                    /// `fin_wait_2`
                    public static let fin_wait_2 = Self.init(rawValue: "fin_wait_2")
                    /// `last_ack`
                    public static let last_ack = Self.init(rawValue: "last_ack")
                    /// `listen`
                    public static let listen = Self.init(rawValue: "listen")
                    /// `syn_recv`
                    public static let syn_recv = Self.init(rawValue: "syn_recv")
                    /// `syn_sent`
                    public static let syn_sent = Self.init(rawValue: "syn_sent")
                    /// `time_wait`
                    public static let time_wait = Self.init(rawValue: "time_wait")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `system.paging` namespace
        public var paging: PagingAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct PagingAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `system.paging.direction`: The paging access direction
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `in`
                ///     - `out`
                /// 
                /// - Example: `in`
                public var direction: Self.Key<DirectionEnum> { .init(name: OTelAttributes.system.paging.direction) }
                
                public struct DirectionEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `in`
                    public static let `in` = Self.init(rawValue: "in")
                    /// `out`
                    public static let out = Self.init(rawValue: "out")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
        
                /// `system.paging.state`: The memory paging state
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `used`
                ///     - `free`
                /// 
                /// - Example: `free`
                public var state: Self.Key<StateEnum> { .init(name: OTelAttributes.system.paging.state) }
                
                public struct StateEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `used`
                    public static let used = Self.init(rawValue: "used")
                    /// `free`
                    public static let free = Self.init(rawValue: "free")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
        
                /// `system.paging.type`: The memory paging type
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `major`
                ///     - `minor`
                /// 
                /// - Example: `minor`
                public var type: Self.Key<TypeEnum> { .init(name: OTelAttributes.system.paging.type) }
                
                public struct TypeEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `major`
                    public static let major = Self.init(rawValue: "major")
                    /// `minor`
                    public static let minor = Self.init(rawValue: "minor")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `system.process` namespace
        public var process: ProcessAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ProcessAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `system.process.status`: The process state, e.g., [Linux Process State Codes](https://man7.org/linux/man-pages/man1/ps.1.html#PROCESS_STATE_CODES) 
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `running`
                ///     - `sleeping`
                ///     - `stopped`
                ///     - `defunct`
                /// 
                /// - Example: `running`
                public var status: Self.Key<StatusEnum> { .init(name: OTelAttributes.system.process.status) }
                
                public struct StatusEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `running`
                    public static let running = Self.init(rawValue: "running")
                    /// `sleeping`
                    public static let sleeping = Self.init(rawValue: "sleeping")
                    /// `stopped`
                    public static let stopped = Self.init(rawValue: "stopped")
                    /// `defunct`
                    public static let defunct = Self.init(rawValue: "defunct")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    
        /// `system.processes` namespace
        public var processes: ProcessesAttributes {
            get {
                .init(attributes: self.attributes)
            }
            set {
                self.attributes = newValue.attributes
            }
        }
        
        @dynamicMemberLookup
        public struct ProcessesAttributes: SpanAttributeNamespace {
            public var attributes: SpanAttributes
        
            public init(attributes: SpanAttributes) {
                self.attributes = attributes
            }
        
            public struct NestedSpanAttributes: NestedSpanAttributesProtocol {
                public init() {}
                /// `system.processes.status`: Deprecated, use `system.process.status` instead.
                /// 
                /// - Stability: experimental
                /// 
                /// - Type: enum
                ///     - `running`
                ///     - `sleeping`
                ///     - `stopped`
                ///     - `defunct`
                /// 
                /// - Example: `running`
                @available(*, deprecated, message: "Replaced by `system.process.status`.")
                public var status: Self.Key<StatusEnum> { .init(name: OTelAttributes.system.processes.status) }
                
                public struct StatusEnum: SpanAttributeConvertible {
                    private let rawValue: String
                    /// `running`
                    public static let running = Self.init(rawValue: "running")
                    /// `sleeping`
                    public static let sleeping = Self.init(rawValue: "sleeping")
                    /// `stopped`
                    public static let stopped = Self.init(rawValue: "stopped")
                    /// `defunct`
                    public static let defunct = Self.init(rawValue: "defunct")
                    public func toSpanAttribute() -> Tracing.SpanAttribute {
                        return .string(self.rawValue)
                    }
                }
            }
        
        
        }
    }
}