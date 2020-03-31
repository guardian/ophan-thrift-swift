/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public func ==(lhs: MediaPlayback, rhs: MediaPlayback) -> Bool {
  return
    (lhs.mediaId == rhs.mediaId) &&
    (lhs.mediaType == rhs.mediaType) &&
    (lhs.preroll == rhs.preroll) &&
    (lhs.eventType == rhs.eventType)
}

extension MediaPlayback : CustomStringConvertible {

  public var description : String {
    var desc = "MediaPlayback("
    desc += "mediaId=\(String(describing: self.mediaId)), "
    desc += "mediaType=\(String(describing: self.mediaType)), "
    desc += "preroll=\(String(describing: self.preroll)), "
    desc += "eventType=\(String(describing: self.eventType))"
    return desc
  }

}

extension MediaPlayback : Hashable {

  public func hash(into hasher: inout Hasher) {
    hasher.combine(mediaId)
    hasher.combine(mediaType)
    hasher.combine(preroll)
    hasher.combine(eventType)
  }

}

extension MediaPlayback : TStruct {

  public static var fieldIds: [String: Int32] {
    return ["mediaId": 1, "mediaType": 2, "preroll": 3, "eventType": 4, ]
  }

  public static var structName: String { return "MediaPlayback" }

  public static func read(from proto: TProtocol) throws -> MediaPlayback {
    _ = try proto.readStructBegin()
    var mediaId: String!
    var mediaType: MediaType!
    var preroll: Bool!
    var eventType: MediaEvent!

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (1, .string):           mediaId = try String.read(from: proto)
        case (2, .i32):             mediaType = try MediaType.read(from: proto)
        case (3, .bool):            preroll = try Bool.read(from: proto)
        case (4, .i32):             eventType = try MediaEvent.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()
    // Required fields
    try proto.validateValue(mediaId, named: "mediaId")
    try proto.validateValue(mediaType, named: "mediaType")
    try proto.validateValue(preroll, named: "preroll")
    try proto.validateValue(eventType, named: "eventType")

    return MediaPlayback(mediaId: mediaId, mediaType: mediaType, preroll: preroll, eventType: eventType)
  }

}



