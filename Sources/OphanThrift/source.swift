/**
 * Autogenerated by Thrift Compiler (0.21.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public enum Source : TEnum {
  case front_or_section
  case fixtures_page
  case swipe
  case in_article_link
  case external_link
  case related_article_link
  case push
  case handoff_web
  case handoff_app
  case widget
  case resume_media
  case back
  case search
  case spotlight
  case state_restoration
  case push_breaking_news
  case push_follow_tag
  case push_other
  case discover
  case membership
  case home_screen
  case navigation

  public static func read(from proto: TProtocol) throws -> Source {
    let raw: Int32 = try proto.read()
    let new = Source(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(Source.self)")
    }
  }

  public init() {
    self = .front_or_section
  }

  public var rawValue: Int32 {
    switch self {
    case .front_or_section: return 0
    case .fixtures_page: return 1
    case .swipe: return 2
    case .in_article_link: return 3
    case .external_link: return 4
    case .related_article_link: return 5
    case .push: return 6
    case .handoff_web: return 7
    case .handoff_app: return 8
    case .widget: return 9
    case .resume_media: return 10
    case .back: return 11
    case .search: return 12
    case .spotlight: return 13
    case .state_restoration: return 14
    case .push_breaking_news: return 15
    case .push_follow_tag: return 16
    case .push_other: return 17
    case .discover: return 18
    case .membership: return 19
    case .home_screen: return 20
    case .navigation: return 21
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 0: self = .front_or_section
    case 1: self = .fixtures_page
    case 2: self = .swipe
    case 3: self = .in_article_link
    case 4: self = .external_link
    case 5: self = .related_article_link
    case 6: self = .push
    case 7: self = .handoff_web
    case 8: self = .handoff_app
    case 9: self = .widget
    case 10: self = .resume_media
    case 11: self = .back
    case 12: self = .search
    case 13: self = .spotlight
    case 14: self = .state_restoration
    case 15: self = .push_breaking_news
    case 16: self = .push_follow_tag
    case 17: self = .push_other
    case 18: self = .discover
    case 19: self = .membership
    case 20: self = .home_screen
    case 21: self = .navigation
    default: return nil
    }
  }
}


