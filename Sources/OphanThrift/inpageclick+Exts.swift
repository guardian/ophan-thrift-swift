/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public func ==(lhs: InPageClick, rhs: InPageClick) -> Bool {
  return
    (lhs.component == rhs.component) &&
    (lhs.linkName == rhs.linkName)
}

extension InPageClick : CustomStringConvertible {

  public var description : String {
    var desc = "InPageClick("
    desc += "component=\(String(describing: self.component)), "
    desc += "linkName=\(String(describing: self.linkName))"
    return desc
  }

}

extension InPageClick : Hashable {

  public func hash(into hasher: inout Hasher) {
    hasher.combine(component)
    hasher.combine(linkName)
  }

}

extension InPageClick : TStruct {

  public static var fieldIds: [String: Int32] {
    return ["component": 1, "linkName": 2, ]
  }

  public static var structName: String { return "InPageClick" }

  public static func read(from proto: TProtocol) throws -> InPageClick {
    _ = try proto.readStructBegin()
    var component: String?
    var linkName: LinkName?

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (1, .string):           component = try String.read(from: proto)
        case (2, .struct):           linkName = try LinkName.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()

    return InPageClick(component: component, linkName: linkName)
  }

}



