/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public func ==(lhs: ScrollDepth, rhs: ScrollDepth) -> Bool {
  return
    (lhs.maxExtent == rhs.maxExtent) &&
    (lhs.numberOfContainers == rhs.numberOfContainers) &&
    (lhs.numberOfContainersViewed == rhs.numberOfContainersViewed)
}

extension ScrollDepth : CustomStringConvertible {

  public var description : String {
    var desc = "ScrollDepth("
    desc += "maxExtent=\(String(describing: self.maxExtent)), "
    desc += "numberOfContainers=\(String(describing: self.numberOfContainers)), "
    desc += "numberOfContainersViewed=\(String(describing: self.numberOfContainersViewed))"
    return desc
  }

}

extension ScrollDepth : Hashable {

  public func hash(into hasher: inout Hasher) {
    hasher.combine(maxExtent)
    hasher.combine(numberOfContainers)
    hasher.combine(numberOfContainersViewed)
  }

}

extension ScrollDepth : TStruct {

  public static var fieldIds: [String: Int32] {
    return ["maxExtent": 1, "numberOfContainers": 2, "numberOfContainersViewed": 3, ]
  }

  public static var structName: String { return "ScrollDepth" }

  public static func read(from proto: TProtocol) throws -> ScrollDepth {
    _ = try proto.readStructBegin()
    var maxExtent: Int32!
    var numberOfContainers: Int32?
    var numberOfContainersViewed: Int32?

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (1, .i32):             maxExtent = try Int32.read(from: proto)
        case (2, .i32):             numberOfContainers = try Int32.read(from: proto)
        case (3, .i32):             numberOfContainersViewed = try Int32.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()
    // Required fields
    try proto.validateValue(maxExtent, named: "maxExtent")

    return ScrollDepth(maxExtent: maxExtent, numberOfContainers: numberOfContainers, numberOfContainersViewed: numberOfContainersViewed)
  }

}



public func ==(lhs: Event, rhs: Event) -> Bool {
  return
    (lhs.eventType == rhs.eventType) &&
    (lhs.eventId == rhs.eventId) &&
    (lhs.viewId == rhs.viewId) &&
    (lhs.ageMsLong == rhs.ageMsLong) &&
    (lhs.ageMs == rhs.ageMs) &&
    (lhs.path == rhs.path) &&
    (lhs.previousPath == rhs.previousPath) &&
    (lhs.referringSource == rhs.referringSource) &&
    (lhs.pushNotificationId == rhs.pushNotificationId) &&
    (lhs.adLoad == rhs.adLoad) &&
    (lhs.benchmark == rhs.benchmark) &&
    (lhs.networkOperation == rhs.networkOperation) &&
    (lhs.attentionMs == rhs.attentionMs) &&
    (lhs.scrollDepth == rhs.scrollDepth) &&
    (lhs.media == rhs.media) &&
    (lhs.ab == rhs.ab) &&
    (lhs.interaction == rhs.interaction) &&
    (lhs.referrer == rhs.referrer) &&
    (lhs.url == rhs.url) &&
    (lhs.renderedComponents == rhs.renderedComponents) &&
    (lhs.componentEvent == rhs.componentEvent) &&
    (lhs.acquisition == rhs.acquisition)
}

extension Event : CustomStringConvertible {

  public var description : String {
    var desc = "Event("
    desc += "eventType=\(String(describing: self.eventType)), "
    desc += "eventId=\(String(describing: self.eventId)), "
    desc += "viewId=\(String(describing: self.viewId)), "
    desc += "ageMsLong=\(String(describing: self.ageMsLong)), "
    desc += "ageMs=\(String(describing: self.ageMs)), "
    desc += "path=\(String(describing: self.path)), "
    desc += "previousPath=\(String(describing: self.previousPath)), "
    desc += "referringSource=\(String(describing: self.referringSource)), "
    desc += "pushNotificationId=\(String(describing: self.pushNotificationId)), "
    desc += "adLoad=\(String(describing: self.adLoad)), "
    desc += "benchmark=\(String(describing: self.benchmark)), "
    desc += "networkOperation=\(String(describing: self.networkOperation)), "
    desc += "attentionMs=\(String(describing: self.attentionMs)), "
    desc += "scrollDepth=\(String(describing: self.scrollDepth)), "
    desc += "media=\(String(describing: self.media)), "
    desc += "ab=\(String(describing: self.ab)), "
    desc += "interaction=\(String(describing: self.interaction)), "
    desc += "referrer=\(String(describing: self.referrer)), "
    desc += "url=\(String(describing: self.url)), "
    desc += "renderedComponents=\(String(describing: self.renderedComponents)), "
    desc += "componentEvent=\(String(describing: self.componentEvent)), "
    desc += "acquisition=\(String(describing: self.acquisition))"
    return desc
  }

}

extension Event : Hashable {

  public func hash(into hasher: inout Hasher) {
    hasher.combine(eventType)
    hasher.combine(eventId)
    hasher.combine(viewId)
    hasher.combine(ageMsLong)
    hasher.combine(ageMs)
    hasher.combine(path)
    hasher.combine(previousPath)
    hasher.combine(referringSource)
    hasher.combine(pushNotificationId)
    hasher.combine(adLoad)
    hasher.combine(benchmark)
    hasher.combine(networkOperation)
    hasher.combine(attentionMs)
    hasher.combine(scrollDepth)
    hasher.combine(media)
    hasher.combine(ab)
    hasher.combine(interaction)
    hasher.combine(referrer)
    hasher.combine(url)
    hasher.combine(renderedComponents)
    hasher.combine(componentEvent)
    hasher.combine(acquisition)
  }

}

extension Event : TStruct {

  public static var fieldIds: [String: Int32] {
    return ["eventType": 3, "eventId": 1, "viewId": 9, "ageMsLong": 22, "ageMs": 2, "path": 4, "previousPath": 5, "referringSource": 6, "pushNotificationId": 7, "adLoad": 8, "benchmark": 10, "networkOperation": 11, "attentionMs": 12, "scrollDepth": 13, "media": 14, "ab": 15, "interaction": 16, "referrer": 17, "url": 18, "renderedComponents": 19, "componentEvent": 20, "acquisition": 21, ]
  }

  public static var structName: String { return "Event" }

  public static func read(from proto: TProtocol) throws -> Event {
    _ = try proto.readStructBegin()
    var eventType: EventType?
    var eventId: String!
    var viewId: String?
    var ageMsLong: Int64?
    var ageMs: Int32?
    var path: String?
    var previousPath: String?
    var referringSource: Source?
    var pushNotificationId: String?
    var adLoad: RenderedAd?
    var benchmark: BenchmarkData?
    var networkOperation: NetworkOperationData?
    var attentionMs: Int64?
    var scrollDepth: ScrollDepth?
    var media: MediaPlayback?
    var ab: AbTestInfo?
    var interaction: Interaction?
    var referrer: Referrer?
    var url: Url?
    var renderedComponents: TList<String>?
    var componentEvent: ComponentEvent?
    var acquisition: Acquisition?

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (3, .i32):             eventType = try EventType.read(from: proto)
        case (1, .string):           eventId = try String.read(from: proto)
        case (9, .string):           viewId = try String.read(from: proto)
        case (22, .i64):             ageMsLong = try Int64.read(from: proto)
        case (2, .i32):             ageMs = try Int32.read(from: proto)
        case (4, .string):           path = try String.read(from: proto)
        case (5, .string):           previousPath = try String.read(from: proto)
        case (6, .i32):             referringSource = try Source.read(from: proto)
        case (7, .string):           pushNotificationId = try String.read(from: proto)
        case (8, .struct):           adLoad = try RenderedAd.read(from: proto)
        case (10, .struct):           benchmark = try BenchmarkData.read(from: proto)
        case (11, .struct):           networkOperation = try NetworkOperationData.read(from: proto)
        case (12, .i64):             attentionMs = try Int64.read(from: proto)
        case (13, .struct):           scrollDepth = try ScrollDepth.read(from: proto)
        case (14, .struct):           media = try MediaPlayback.read(from: proto)
        case (15, .struct):           ab = try AbTestInfo.read(from: proto)
        case (16, .struct):           interaction = try Interaction.read(from: proto)
        case (17, .struct):           referrer = try Referrer.read(from: proto)
        case (18, .struct):           url = try Url.read(from: proto)
        case (19, .list):            renderedComponents = try TList<String>.read(from: proto)
        case (20, .struct):           componentEvent = try ComponentEvent.read(from: proto)
        case (21, .struct):           acquisition = try Acquisition.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()
    // Required fields
    try proto.validateValue(eventId, named: "eventId")

    return Event(eventType: eventType, eventId: eventId, viewId: viewId, ageMsLong: ageMsLong, ageMs: ageMs, path: path, previousPath: previousPath, referringSource: referringSource, pushNotificationId: pushNotificationId, adLoad: adLoad, benchmark: benchmark, networkOperation: networkOperation, attentionMs: attentionMs, scrollDepth: scrollDepth, media: media, ab: ab, interaction: interaction, referrer: referrer, url: url, renderedComponents: renderedComponents, componentEvent: componentEvent, acquisition: acquisition)
  }

}



public func ==(lhs: App, rhs: App) -> Bool {
  return
    (lhs.version == rhs.version) &&
    (lhs.family == rhs.family) &&
    (lhs.os == rhs.os) &&
    (lhs.edition == rhs.edition) &&
    (lhs.platform == rhs.platform)
}

extension App : CustomStringConvertible {

  public var description : String {
    var desc = "App("
    desc += "version=\(String(describing: self.version)), "
    desc += "family=\(String(describing: self.family)), "
    desc += "os=\(String(describing: self.os)), "
    desc += "edition=\(String(describing: self.edition)), "
    desc += "platform=\(String(describing: self.platform))"
    return desc
  }

}

extension App : Hashable {

  public func hash(into hasher: inout Hasher) {
    hasher.combine(version)
    hasher.combine(family)
    hasher.combine(os)
    hasher.combine(edition)
    hasher.combine(platform)
  }

}

extension App : TStruct {

  public static var fieldIds: [String: Int32] {
    return ["version": 1, "family": 2, "os": 3, "edition": 4, "platform": 5, ]
  }

  public static var structName: String { return "App" }

  public static func read(from proto: TProtocol) throws -> App {
    _ = try proto.readStructBegin()
    var version: String?
    var family: String?
    var os: String?
    var edition: Edition?
    var platform: Platform?

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (1, .string):           version = try String.read(from: proto)
        case (2, .string):           family = try String.read(from: proto)
        case (3, .string):           os = try String.read(from: proto)
        case (4, .i32):             edition = try Edition.read(from: proto)
        case (5, .i32):             platform = try Platform.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()

    return App(version: version, family: family, os: os, edition: edition, platform: platform)
  }

}



public func ==(lhs: Device, rhs: Device) -> Bool {
  return
    (lhs.name == rhs.name) &&
    (lhs.manufacturer == rhs.manufacturer) &&
    (lhs.deviceClass == rhs.deviceClass)
}

extension Device : CustomStringConvertible {

  public var description : String {
    var desc = "Device("
    desc += "name=\(String(describing: self.name)), "
    desc += "manufacturer=\(String(describing: self.manufacturer)), "
    desc += "deviceClass=\(String(describing: self.deviceClass))"
    return desc
  }

}

extension Device : Hashable {

  public func hash(into hasher: inout Hasher) {
    hasher.combine(name)
    hasher.combine(manufacturer)
    hasher.combine(deviceClass)
  }

}

extension Device : TStruct {

  public static var fieldIds: [String: Int32] {
    return ["name": 1, "manufacturer": 2, "deviceClass": 3, ]
  }

  public static var structName: String { return "Device" }

  public static func read(from proto: TProtocol) throws -> Device {
    _ = try proto.readStructBegin()
    var name: String?
    var manufacturer: String?
    var deviceClass: DeviceClass?

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (1, .string):           name = try String.read(from: proto)
        case (2, .string):           manufacturer = try String.read(from: proto)
        case (3, .i32):             deviceClass = try DeviceClass.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()

    return Device(name: name, manufacturer: manufacturer, deviceClass: deviceClass)
  }

}



public func ==(lhs: NativeAppSubmission, rhs: NativeAppSubmission) -> Bool {
  return
    (lhs.app == rhs.app) &&
    (lhs.device == rhs.device) &&
    (lhs.deviceId == rhs.deviceId) &&
    (lhs.userId == rhs.userId) &&
    (lhs.kruxId == rhs.kruxId) &&
    (lhs.subscriptionId == rhs.subscriptionId) &&
    (lhs.events == rhs.events) &&
    (lhs.membershipTier == rhs.membershipTier)
}

extension NativeAppSubmission : CustomStringConvertible {

  public var description : String {
    var desc = "NativeAppSubmission("
    desc += "app=\(String(describing: self.app)), "
    desc += "device=\(String(describing: self.device)), "
    desc += "deviceId=\(String(describing: self.deviceId)), "
    desc += "userId=\(String(describing: self.userId)), "
    desc += "kruxId=\(String(describing: self.kruxId)), "
    desc += "subscriptionId=\(String(describing: self.subscriptionId)), "
    desc += "events=\(String(describing: self.events)), "
    desc += "membershipTier=\(String(describing: self.membershipTier))"
    return desc
  }

}

extension NativeAppSubmission : Hashable {

  public func hash(into hasher: inout Hasher) {
    hasher.combine(app)
    hasher.combine(device)
    hasher.combine(deviceId)
    hasher.combine(userId)
    hasher.combine(kruxId)
    hasher.combine(subscriptionId)
    hasher.combine(events)
    hasher.combine(membershipTier)
  }

}

extension NativeAppSubmission : TStruct {

  public static var fieldIds: [String: Int32] {
    return ["app": 2, "device": 3, "deviceId": 4, "userId": 5, "kruxId": 8, "subscriptionId": 6, "events": 7, "membershipTier": 9, ]
  }

  public static var structName: String { return "NativeAppSubmission" }

  public static func read(from proto: TProtocol) throws -> NativeAppSubmission {
    _ = try proto.readStructBegin()
    var app: App!
    var device: Device?
    var deviceId: String!
    var userId: String?
    var kruxId: String?
    var subscriptionId: SubscriptionType?
    var events: TList<Event>!
    var membershipTier: MembershipTier?

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (2, .struct):           app = try App.read(from: proto)
        case (3, .struct):           device = try Device.read(from: proto)
        case (4, .string):           deviceId = try String.read(from: proto)
        case (5, .string):           userId = try String.read(from: proto)
        case (8, .string):           kruxId = try String.read(from: proto)
        case (6, .i32):             subscriptionId = try SubscriptionType.read(from: proto)
        case (7, .list):            events = try TList<Event>.read(from: proto)
        case (9, .i32):             membershipTier = try MembershipTier.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()
    // Required fields
    try proto.validateValue(app, named: "app")
    try proto.validateValue(deviceId, named: "deviceId")
    try proto.validateValue(events, named: "events")

    return NativeAppSubmission(app: app, device: device, deviceId: deviceId, userId: userId, kruxId: kruxId, subscriptionId: subscriptionId, events: events, membershipTier: membershipTier)
  }

}



