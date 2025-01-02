/**
 * Autogenerated by Thrift Compiler (0.21.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public func ==(lhs: AppReferral, rhs: AppReferral) -> Bool {
  return
    (lhs.raw == rhs.raw) &&
    (lhs.appId == rhs.appId)
}

extension AppReferral : CustomStringConvertible {

  public var description : String {
    var desc = "AppReferral("
    desc += "raw=\(String(describing: self.raw)), "
    desc += "appId=\(String(describing: self.appId))"
    return desc
  }

}

extension AppReferral : Hashable {

  public func hash(into hasher: inout Hasher) {
    hasher.combine(raw)
    hasher.combine(appId)
  }

}

extension AppReferral : TStruct {

  public static var fieldIds: [String: Int32] {
    return ["raw": 1, "appId": 2, ]
  }

  public static var structName: String { return "AppReferral" }

  public static func read(from proto: TProtocol) throws -> AppReferral {
    _ = try proto.readStructBegin()
    var raw: String!
    var appId: String?

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (1, .string):           raw = try String.read(from: proto)
        case (2, .string):           appId = try String.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()
    // Required fields
    try proto.validateValue(raw, named: "raw")

    return AppReferral(raw: raw, appId: appId)
  }

}



public func ==(lhs: Referrer, rhs: Referrer) -> Bool {
  return
    (lhs.url == rhs.url) &&
    (lhs.component == rhs.component) &&
    (lhs.linkName == rhs.linkName) &&
    (lhs.platform == rhs.platform) &&
    (lhs.viewId == rhs.viewId) &&
    (lhs.email == rhs.email) &&
    (lhs.nativeAppSource == rhs.nativeAppSource) &&
    (lhs.google == rhs.google) &&
    (lhs.tagIdFollowed == rhs.tagIdFollowed) &&
    (lhs.appReferral == rhs.appReferral) &&
    (lhs.capiId == rhs.capiId)
}

extension Referrer : CustomStringConvertible {

  public var description : String {
    var desc = "Referrer("
    desc += "url=\(String(describing: self.url)), "
    desc += "component=\(String(describing: self.component)), "
    desc += "linkName=\(String(describing: self.linkName)), "
    desc += "platform=\(String(describing: self.platform)), "
    desc += "viewId=\(String(describing: self.viewId)), "
    desc += "email=\(String(describing: self.email)), "
    desc += "nativeAppSource=\(String(describing: self.nativeAppSource)), "
    desc += "google=\(String(describing: self.google)), "
    desc += "tagIdFollowed=\(String(describing: self.tagIdFollowed)), "
    desc += "appReferral=\(String(describing: self.appReferral)), "
    desc += "capiId=\(String(describing: self.capiId))"
    return desc
  }

}

extension Referrer : Hashable {

  public func hash(into hasher: inout Hasher) {
    hasher.combine(url)
    hasher.combine(component)
    hasher.combine(linkName)
    hasher.combine(platform)
    hasher.combine(viewId)
    hasher.combine(email)
    hasher.combine(nativeAppSource)
    hasher.combine(google)
    hasher.combine(tagIdFollowed)
    hasher.combine(appReferral)
    hasher.combine(capiId)
  }

}

extension Referrer : TStruct {

  public static var fieldIds: [String: Int32] {
    return ["url": 1, "component": 4, "linkName": 10, "platform": 5, "viewId": 6, "email": 7, "nativeAppSource": 8, "google": 9, "tagIdFollowed": 11, "appReferral": 12, "capiId": 13, ]
  }

  public static var structName: String { return "Referrer" }

  public static func read(from proto: TProtocol) throws -> Referrer {
    _ = try proto.readStructBegin()
    var url: Url?
    var component: String?
    var linkName: LinkName?
    var platform: Platform?
    var viewId: String?
    var email: String?
    var nativeAppSource: Source?
    var google: GoogleReferral?
    var tagIdFollowed: String?
    var appReferral: AppReferral?
    var capiId: String?

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (1, .struct):           url = try Url.read(from: proto)
        case (4, .string):           component = try String.read(from: proto)
        case (10, .struct):           linkName = try LinkName.read(from: proto)
        case (5, .i32):             platform = try Platform.read(from: proto)
        case (6, .string):           viewId = try String.read(from: proto)
        case (7, .string):           email = try String.read(from: proto)
        case (8, .i32):             nativeAppSource = try Source.read(from: proto)
        case (9, .struct):           google = try GoogleReferral.read(from: proto)
        case (11, .string):           tagIdFollowed = try String.read(from: proto)
        case (12, .struct):           appReferral = try AppReferral.read(from: proto)
        case (13, .string):           capiId = try String.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()

    return Referrer(url: url, component: component, linkName: linkName, platform: platform, viewId: viewId, email: email, nativeAppSource: nativeAppSource, google: google, tagIdFollowed: tagIdFollowed, appReferral: appReferral, capiId: capiId)
  }

}



