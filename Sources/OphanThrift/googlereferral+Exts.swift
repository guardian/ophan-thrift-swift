/**
 * Autogenerated by Thrift Compiler (0.19.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public func ==(lhs: GoogleReferral, rhs: GoogleReferral) -> Bool {
  return
    (lhs.q == rhs.q) &&
    (lhs.rank == rhs.rank) &&
    (lhs.source == rhs.source) &&
    (lhs.products == rhs.products)
}

extension GoogleReferral : CustomStringConvertible {

  public var description : String {
    var desc = "GoogleReferral("
    desc += "q=\(String(describing: self.q)), "
    desc += "rank=\(String(describing: self.rank)), "
    desc += "source=\(String(describing: self.source)), "
    desc += "products=\(String(describing: self.products))"
    return desc
  }

}

extension GoogleReferral : Hashable {

  public func hash(into hasher: inout Hasher) {
    hasher.combine(q)
    hasher.combine(rank)
    hasher.combine(source)
    hasher.combine(products)
  }

}

extension GoogleReferral : TStruct {

  public static var fieldIds: [String: Int32] {
    return ["q": 1, "rank": 2, "source": 3, "products": 4, ]
  }

  public static var structName: String { return "GoogleReferral" }

  public static func read(from proto: TProtocol) throws -> GoogleReferral {
    _ = try proto.readStructBegin()
    var q: String?
    var rank: Int32?
    var source: String?
    var products: TSet<GoogleProduct>?

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (1, .string):           q = try String.read(from: proto)
        case (2, .i32):             rank = try Int32.read(from: proto)
        case (3, .string):           source = try String.read(from: proto)
        case (4, .set):             products = try TSet<GoogleProduct>.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()

    return GoogleReferral(q: q, rank: rank, source: source, products: products)
  }

}



