/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public func ==(lhs: LinkName, rhs: LinkName) -> Bool {
  return
    (lhs.raw == rhs.raw)
}

extension LinkName : CustomStringConvertible {

  public var description : String {
    var desc = "LinkName("
    desc += "raw=\(String(describing: self.raw))"
    return desc
  }

}

extension LinkName : Hashable {

  public func hash(into hasher: inout Hasher) {
    hasher.combine(raw)
  }

}

extension LinkName : TStruct {

  public static var fieldIds: [String: Int32] {
    return ["raw": 1, ]
  }

  public static var structName: String { return "LinkName" }

  public static func read(from proto: TProtocol) throws -> LinkName {
    _ = try proto.readStructBegin()
    var raw: TList<String>?

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (1, .list):            raw = try TList<String>.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()

    return LinkName(raw: raw)
  }

}



