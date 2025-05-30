/**
 * Autogenerated by Thrift Compiler (0.21.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public enum GoogleProduct : TEnum {
  case google_news
  case google_newsstand
  case google_plus
  case google_search
  case google_mobile_app
  case google_go_mobile_app
  case gmail
  case google_chrome_suggested_content
  case google_discover
  case google_showcase

  public static func read(from proto: TProtocol) throws -> GoogleProduct {
    let raw: Int32 = try proto.read()
    let new = GoogleProduct(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(GoogleProduct.self)")
    }
  }

  public init() {
    self = .google_news
  }

  public var rawValue: Int32 {
    switch self {
    case .google_news: return 1
    case .google_newsstand: return 2
    case .google_plus: return 3
    case .google_search: return 4
    case .google_mobile_app: return 5
    case .google_go_mobile_app: return 6
    case .gmail: return 7
    case .google_chrome_suggested_content: return 8
    case .google_discover: return 9
    case .google_showcase: return 10
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 1: self = .google_news
    case 2: self = .google_newsstand
    case 3: self = .google_plus
    case 4: self = .google_search
    case 5: self = .google_mobile_app
    case 6: self = .google_go_mobile_app
    case 7: self = .gmail
    case 8: self = .google_chrome_suggested_content
    case 9: self = .google_discover
    case 10: self = .google_showcase
    default: return nil
    }
  }
}

/// Where the referrer was google and they've provided additional information
/// on the query string, here is
/// that additional information.
public final class GoogleReferral {

  /// The query terms requested by the user
  public var q: String?

  /// The rank we were list at within the source, as indicated by the "cd" query
  /// parameter.
  public var rank: Int32?

  /// The type of referral this was. Currently this is just a string, and is likely to
  /// change as we overhaul our google ved parsing
  public var source: String?

  /// A description of the google product that referred the user to the page as defined in
  /// ophan.model.google.GoogleProduct
  public var products: TSet<GoogleProduct>?


  public init() { }
  public init(q: String?, rank: Int32?, source: String?, products: TSet<GoogleProduct>?) {
    self.q = q
    self.rank = rank
    self.source = source
    self.products = products
  }

}


