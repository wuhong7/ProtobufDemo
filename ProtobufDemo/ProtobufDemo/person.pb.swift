// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: person.proto
//
// For information on using the generated types, please see the documenation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Person: SwiftProtobuf.Message {
  static let protoMessageName: String = "Person"

  var personID: Int64 = 0

  var personName: String = String()

  var personGender: String = String()

  var personMessage: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  /// Used by the decoding initializers in the SwiftProtobuf library, not generally
  /// used directly. `init(serializedData:)`, `init(jsonUTF8Data:)`, and other decoding
  /// initializers are defined in the SwiftProtobuf library. See the Message and
  /// Message+*Additions` files.
  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularInt64Field(value: &self.personID)
      case 2: try decoder.decodeSingularStringField(value: &self.personName)
      case 3: try decoder.decodeSingularStringField(value: &self.personGender)
      case 4: try decoder.decodeSingularStringField(value: &self.personMessage)
      default: break
      }
    }
  }

  /// Used by the encoding methods of the SwiftProtobuf library, not generally
  /// used directly. `Message.serializedData()`, `Message.jsonUTF8Data()`, and
  /// other serializer methods are defined in the SwiftProtobuf library. See the
  /// `Message` and `Message+*Additions` files.
  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.personID != 0 {
      try visitor.visitSingularInt64Field(value: self.personID, fieldNumber: 1)
    }
    if !self.personName.isEmpty {
      try visitor.visitSingularStringField(value: self.personName, fieldNumber: 2)
    }
    if !self.personGender.isEmpty {
      try visitor.visitSingularStringField(value: self.personGender, fieldNumber: 3)
    }
    if !self.personMessage.isEmpty {
      try visitor.visitSingularStringField(value: self.personMessage, fieldNumber: 4)
    }
    try unknownFields.traverse(visitor: &visitor)
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension Person: SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "person_id"),
    2: .standard(proto: "person_name"),
    3: .standard(proto: "person_gender"),
    4: .standard(proto: "person_message"),
  ]

  func _protobuf_generated_isEqualTo(other: Person) -> Bool {
    if self.personID != other.personID {return false}
    if self.personName != other.personName {return false}
    if self.personGender != other.personGender {return false}
    if self.personMessage != other.personMessage {return false}
    if unknownFields != other.unknownFields {return false}
    return true
  }
}
