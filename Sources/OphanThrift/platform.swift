/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public enum Platform : TEnum {
  case r2
  case next_gen
  case ios_native_app
  case android_native_app
  case embed
  case membership
  case facebook_instant_article
  case amp
  case witness
  case jobs
  case contribution
  case yahoo
  case amazon_echo
  case apple_news
  case windows_native_app
  case scribd
  case support
  case subscribe
  case manage_my_account
  case smart_news
  case editions

  public static func read(from proto: TProtocol) throws -> Platform {
    let raw: Int32 = try proto.read()
    let new = Platform(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(Platform.self)")
    }
  }

  public init() {
    self = .r2
  }

  public var rawValue: Int32 {
    switch self {
    case .r2: return 0
    case .next_gen: return 1
    case .ios_native_app: return 2
    case .android_native_app: return 3
    case .embed: return 4
    case .membership: return 5
    case .facebook_instant_article: return 6
    case .amp: return 7
    case .witness: return 8
    case .jobs: return 9
    case .contribution: return 10
    case .yahoo: return 11
    case .amazon_echo: return 12
    case .apple_news: return 13
    case .windows_native_app: return 14
    case .scribd: return 15
    case .support: return 16
    case .subscribe: return 17
    case .manage_my_account: return 18
    case .smart_news: return 19
    case .editions: return 20
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 0: self = .r2
    case 1: self = .next_gen
    case 2: self = .ios_native_app
    case 3: self = .android_native_app
    case 4: self = .embed
    case 5: self = .membership
    case 6: self = .facebook_instant_article
    case 7: self = .amp
    case 8: self = .witness
    case 9: self = .jobs
    case 10: self = .contribution
    case 11: self = .yahoo
    case 12: self = .amazon_echo
    case 13: self = .apple_news
    case 14: self = .windows_native_app
    case 15: self = .scribd
    case 16: self = .support
    case 17: self = .subscribe
    case 18: self = .manage_my_account
    case 19: self = .smart_news
    case 20: self = .editions
    default: return nil
    }
  }
}


