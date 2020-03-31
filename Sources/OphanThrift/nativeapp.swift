/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public enum EventType : TEnum {
  case view
  case ad_load
  case performance
  case network
  case interaction
  case ab_test
  case component_event
  case acquisition

  public static func read(from proto: TProtocol) throws -> EventType {
    let raw: Int32 = try proto.read()
    let new = EventType(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(EventType.self)")
    }
  }

  public init() {
    self = .view
  }

  public var rawValue: Int32 {
    switch self {
    case .view: return 0
    case .ad_load: return 1
    case .performance: return 2
    case .network: return 3
    case .interaction: return 4
    case .ab_test: return 5
    case .component_event: return 6
    case .acquisition: return 7
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 0: self = .view
    case 1: self = .ad_load
    case 2: self = .performance
    case 3: self = .network
    case 4: self = .interaction
    case 5: self = .ab_test
    case 6: self = .component_event
    case 7: self = .acquisition
    default: return nil
    }
  }
}

public enum Edition : TEnum {
  case uk
  case us
  case au
  case international

  public static func read(from proto: TProtocol) throws -> Edition {
    let raw: Int32 = try proto.read()
    let new = Edition(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(Edition.self)")
    }
  }

  public init() {
    self = .uk
  }

  public var rawValue: Int32 {
    switch self {
    case .uk: return 0
    case .us: return 1
    case .au: return 2
    case .international: return 3
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 0: self = .uk
    case 1: self = .us
    case 2: self = .au
    case 3: self = .international
    default: return nil
    }
  }
}

public final class ScrollDepth {

  /// The maximum percentage of the page seen by the user
  public var maxExtent: Int32

  /// Total number of containers that were displayed on the page
  /// Only applicable for fronts
  public var numberOfContainers: Int32?

  /// Number of containers acctually viewed by the user
  /// Only applicable for fronts
  public var numberOfContainersViewed: Int32?


  public init(maxExtent: Int32) {
    self.maxExtent = maxExtent
  }

  public init(maxExtent: Int32, numberOfContainers: Int32?, numberOfContainersViewed: Int32?) {
    self.maxExtent = maxExtent
    self.numberOfContainers = numberOfContainers
    self.numberOfContainersViewed = numberOfContainersViewed
  }

}

/// E.g. a 'page view' see EventType.
public final class Event {

  /// Unique id associated with this specific event.
  /// You must make sure this is globally unqiue: ophan will only process one event per eventId.
  public var eventId: String

  /// DEPRECATED - use ageMsLong instead
  /// The i32 type is a 32-bit signed integer, so can only represent up to 2^31 milliseconds (24.9 days) of age
  /// without overflow - if a device is offline longer than a month we would get some weird 'future' events.
  public var ageMs: Int32?

  /// The type of this event
  public var eventType: EventType?

  /// Represents the page that has been displayed.
  /// For content pages, this should the exact content api path with a "/" prefix.
  /// For other pages, this should be the path of the corresponding web page on theguardian.com.
  /// This is mandatory if eventType is VIEW.
  public var path: String?

  /// DEPRECATED - use referrer
  /// The referring path, i.e. the path representing a page displyed on the app on
  /// which the user clicked a link to arrive at this page.
  public var previousPath: String?

  /// DEPRECATED - use referrer
  /// The means by which the user arrived at this page.
  public var referringSource: Source?

  /// An id which we can link back to Pushy.
  public var pushNotificationId: String?

  /// Details about a rendered ad.
  /// Only applicable if eventType is AD_LOAD.
  public var adLoad: RenderedAd?

  /// The id of this page view. Defaults to the same as event Id which is fine for events of type View.
  /// However, AD_LOAD events must set this to be the same as the viewId of the of the page view on which
  /// this ad is shown.
  public var viewId: String?

  /// Contains benchmark data.
  /// Only applicable if eventType is PERFORMANCE.
  public var benchmark: BenchmarkData?

  /// Contains performance data for network based operations.
  /// Only applicable if eventType is NETWORK.
  public var networkOperation: NetworkOperationData?

  /// Attention time spent on this page view in milliseconds
  /// Only applicable if eventType is INTERACTION.
  public var attentionMs: Int64?

  /// Details of how far through a page a user has scrolled
  /// Only applicable if eventType is INTERACTION.
  public var scrollDepth: ScrollDepth?

  /// If populated, this event includes data about media playback
  public var media: MediaPlayback?

  /// If populated, this event includes data about ab tests that the user was a member of
  public var ab: AbTestInfo?

  /// If populated, this event includes data about in-app interactions.
  public var interaction: Interaction?

  /// If populated, contains information about the referrer/previous page in the apps.
  public var referrer: Referrer?

  /// Represents the url of the page that has been displayed.
  /// Only applicable if eventType is VIEW.
  public var url: Url?

  /// If populated, contains information about the components present on the view.
  /// Only applicable if eventType is VIEW.
  public var renderedComponents: TList<String>?

  /// If populated, this event includes data about components
  public var componentEvent: ComponentEvent?

  /// If populated, this event includes data about an acquisition
  public var acquisition: Acquisition?

  /// This is for reporting offline events.
  /// The number of milliseconds ago that the event occurred. (We deliberately don't
  /// use an absolute timestamp to avoid issues with clocks on mobile devices being incorrect)
  /// This number should be zero or a positive number, never negative (that would mean in the future!).
  /// If an event has just happened, set this value to 0.
  public var ageMsLong: Int64?


  public init(eventId: String) {
    self.eventId = eventId
  }

  public init(eventType: EventType?, eventId: String, viewId: String?, ageMsLong: Int64?, ageMs: Int32?, path: String?, previousPath: String?, referringSource: Source?, pushNotificationId: String?, adLoad: RenderedAd?, benchmark: BenchmarkData?, networkOperation: NetworkOperationData?, attentionMs: Int64?, scrollDepth: ScrollDepth?, media: MediaPlayback?, ab: AbTestInfo?, interaction: Interaction?, referrer: Referrer?, url: Url?, renderedComponents: TList<String>?, componentEvent: ComponentEvent?, acquisition: Acquisition?) {
    self.eventType = eventType
    self.eventId = eventId
    self.viewId = viewId
    self.ageMsLong = ageMsLong
    self.ageMs = ageMs
    self.path = path
    self.previousPath = previousPath
    self.referringSource = referringSource
    self.pushNotificationId = pushNotificationId
    self.adLoad = adLoad
    self.benchmark = benchmark
    self.networkOperation = networkOperation
    self.attentionMs = attentionMs
    self.scrollDepth = scrollDepth
    self.media = media
    self.ab = ab
    self.interaction = interaction
    self.referrer = referrer
    self.url = url
    self.renderedComponents = renderedComponents
    self.componentEvent = componentEvent
    self.acquisition = acquisition
  }

}

/// Details about this running application
public final class App {

  /// The version of the app.
  public var version: String?

  /// The device family.
  public var family: String?

  /// The device's os.
  public var os: String?

  /// The edition of the app.
  public var edition: Edition?

  public var platform: Platform?


  public init() { }
  public init(version: String?, family: String?, os: String?, edition: Edition?, platform: Platform?) {
    self.version = version
    self.family = family
    self.os = os
    self.edition = edition
    self.platform = platform
  }

}

public final class Device {

  public var name: String?

  public var manufacturer: String?

  public var deviceClass: DeviceClass?


  public init() { }
  public init(name: String?, manufacturer: String?, deviceClass: DeviceClass?) {
    self.name = name
    self.manufacturer = manufacturer
    self.deviceClass = deviceClass
  }

}

/// This is the root object that represents a tracking submission from native apps.
/// This can be supplied to Ophan in one of two ways:
/// <ol>
///   <li>Create the equivalent json and POST the json to https://ophan.theguardian.com/mob with a content type
///   of application/json</li>
///   <li>Create a thift binary blob in compact binary protocol format from
///   <a href="https://github.com/guardian/ophan/blob/master/event-model/src/main/thrift/nativeapp.thrift">this definition</a>
///   and POST to
///   https://ophan.theguardian.com/mob a content type of application/vnd.apache.thrift.compact</li>
/// </ol>
/// Note that, for largely backwards compatibility reasons, in some cases we allow synonyms for enum values in
/// json; these are noted in the descriptions below.
public final class NativeAppSubmission {

  /// App specific information.
  public var app: App

  /// Device specific information.
  public var device: Device?

  /// Equivalent to a web cookie. A way of identifying unique devices.
  public var deviceId: String

  /// The user’s guardian user id if they are logged in.
  public var userId: String?

  /// What type of subscription does this user have?
  public var subscriptionId: SubscriptionType?

  /// The interaction events contained within this submission.
  public var events: TList<Event>

  /// DEPRECATED - Apps no longer use Krux
  /// The krux identifer for this user.
  public var kruxId: String?

  /// If this user is a member, what tier are they currently a part of?
  public var membershipTier: MembershipTier?


  public init(app: App, deviceId: String, events: TList<Event>) {
    self.app = app
    self.deviceId = deviceId
    self.events = events
  }

  public init(app: App, device: Device?, deviceId: String, userId: String?, kruxId: String?, subscriptionId: SubscriptionType?, events: TList<Event>, membershipTier: MembershipTier?) {
    self.app = app
    self.device = device
    self.deviceId = deviceId
    self.userId = userId
    self.kruxId = kruxId
    self.subscriptionId = subscriptionId
    self.events = events
    self.membershipTier = membershipTier
  }

}


