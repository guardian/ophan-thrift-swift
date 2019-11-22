/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public enum MediaType : TEnum {
  case video
  case audio

  public static func read(from proto: TProtocol) throws -> MediaType {
    let raw: Int32 = try proto.read()
    let new = MediaType(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(MediaType.self)")
    }
  }

  public init() {
    self = .video
  }

  public var rawValue: Int32 {
    switch self {
    case .video: return 1
    case .audio: return 2
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 1: self = .video
    case 2: self = .audio
    default: return nil
    }
  }
}

public enum MediaEvent : TEnum {
  case request
  case ready
  case play
  case percent25
  case percent50
  case percent75
  case the_end

  public static func read(from proto: TProtocol) throws -> MediaEvent {
    let raw: Int32 = try proto.read()
    let new = MediaEvent(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(MediaEvent.self)")
    }
  }

  public init() {
    self = .request
  }

  public var rawValue: Int32 {
    switch self {
    case .request: return 1
    case .ready: return 2
    case .play: return 3
    case .percent25: return 4
    case .percent50: return 5
    case .percent75: return 6
    case .the_end: return 7
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 1: self = .request
    case 2: self = .ready
    case 3: self = .play
    case 4: self = .percent25
    case 5: self = .percent50
    case 6: self = .percent75
    case 7: self = .the_end
    default: return nil
    }
  }
}

/// Details about media playback progress
/// Note: currently only guardian-hosted videos are reported.
public final class MediaPlayback {

  /// The id of the media asset, e.g. gu-video-454297906
  /// This matches up with the media id within the content api.
  public var mediaId: String

  /// The media type
  public var mediaType: MediaType

  /// If true, this event relates to the pre-roll (ad) of this media.
  /// If false, this event reated to the core media content.
  public var preroll: Bool

  /// The event type.
  public var eventType: MediaEvent


  public init(mediaId: String, mediaType: MediaType, preroll: Bool, eventType: MediaEvent) {
    self.mediaId = mediaId
    self.mediaType = mediaType
    self.preroll = preroll
    self.eventType = eventType
  }

}

