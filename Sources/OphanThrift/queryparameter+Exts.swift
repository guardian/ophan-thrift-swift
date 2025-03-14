/**
 * Autogenerated by Thrift Compiler (0.21.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public func ==(lhs: QueryParameter, rhs: QueryParameter) -> Bool {
  return
    (lhs.name == rhs.name) &&
    (lhs.value == rhs.value)
}

extension QueryParameter : CustomStringConvertible {

  public var description : String {
    var desc = "QueryParameter("
    desc += "name=\(String(describing: self.name)), "
    desc += "value=\(String(describing: self.value))"
    return desc
  }

}

extension QueryParameter : Hashable {

  public func hash(into hasher: inout Hasher) {
    hasher.combine(name)
    hasher.combine(value)
  }

}

extension QueryParameter : TStruct {

  public static var fieldIds: [String: Int32] {
    return ["name": 1, "value": 2, ]
  }

  public static var structName: String { return "QueryParameter" }

  public static func read(from proto: TProtocol) throws -> QueryParameter {
    _ = try proto.readStructBegin()
    var name: String!
    var value: String!

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (1, .string):           name = try String.read(from: proto)
        case (2, .string):           value = try String.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()
    // Required fields
    try proto.validateValue(name, named: "name")
    try proto.validateValue(value, named: "value")

    return QueryParameter(name: name, value: value)
  }

}



