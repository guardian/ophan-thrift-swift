/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public enum PaymentFrequency : TEnum {
  case one_off
  case monthly
  case annually
  case quarterly
  case six_monthly

  public static func read(from proto: TProtocol) throws -> PaymentFrequency {
    let raw: Int32 = try proto.read()
    let new = PaymentFrequency(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(PaymentFrequency.self)")
    }
  }

  public init() {
    self = .one_off
  }

  public var rawValue: Int32 {
    switch self {
    case .one_off: return 1
    case .monthly: return 2
    case .annually: return 3
    case .quarterly: return 4
    case .six_monthly: return 5
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 1: self = .one_off
    case 2: self = .monthly
    case 3: self = .annually
    case 4: self = .quarterly
    case 5: self = .six_monthly
    default: return nil
    }
  }
}

public enum PaymentProvider : TEnum {
  case stripe
  case paypal
  case gocardless
  case in_app_purchase
  case stripe_apple_pay
  case stripe_payment_request_button
  case subscribe_with_google
  case amazon_pay
  case stripe_sepa

  public static func read(from proto: TProtocol) throws -> PaymentProvider {
    let raw: Int32 = try proto.read()
    let new = PaymentProvider(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(PaymentProvider.self)")
    }
  }

  public init() {
    self = .stripe
  }

  public var rawValue: Int32 {
    switch self {
    case .stripe: return 1
    case .paypal: return 2
    case .gocardless: return 3
    case .in_app_purchase: return 4
    case .stripe_apple_pay: return 5
    case .stripe_payment_request_button: return 6
    case .subscribe_with_google: return 7
    case .amazon_pay: return 8
    case .stripe_sepa: return 9
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 1: self = .stripe
    case 2: self = .paypal
    case 3: self = .gocardless
    case 4: self = .in_app_purchase
    case 5: self = .stripe_apple_pay
    case 6: self = .stripe_payment_request_button
    case 7: self = .subscribe_with_google
    case 8: self = .amazon_pay
    case 9: self = .stripe_sepa
    default: return nil
    }
  }
}

public enum AcquisitionSource : TEnum {
  case guardian_web
  case guardian_apps
  case email
  case social
  case search
  case ppc
  case direct
  case guardian_app_ios
  case guardian_app_android
  case apple_news
  case google_amp
  case youtube

  public static func read(from proto: TProtocol) throws -> AcquisitionSource {
    let raw: Int32 = try proto.read()
    let new = AcquisitionSource(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(AcquisitionSource.self)")
    }
  }

  public init() {
    self = .guardian_web
  }

  public var rawValue: Int32 {
    switch self {
    case .guardian_web: return 1
    case .guardian_apps: return 2
    case .email: return 3
    case .social: return 4
    case .search: return 5
    case .ppc: return 6
    case .direct: return 7
    case .guardian_app_ios: return 8
    case .guardian_app_android: return 9
    case .apple_news: return 10
    case .google_amp: return 11
    case .youtube: return 12
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 1: self = .guardian_web
    case 2: self = .guardian_apps
    case 3: self = .email
    case 4: self = .social
    case 5: self = .search
    case 6: self = .ppc
    case 7: self = .direct
    case 8: self = .guardian_app_ios
    case 9: self = .guardian_app_android
    case 10: self = .apple_news
    case 11: self = .google_amp
    case 12: self = .youtube
    default: return nil
    }
  }
}

/// Represents monetary contribution made by a reader via this page.
public final class Acquisition {

  /// Product type
  public var product: Product

  /// If the payment is a one off or reccuring
  public var paymentFrequency: PaymentFrequency

  /// Currency code (ISO 4217 3-character, upper-case, eg USD, GBP)
  public var currency: String

  /// Contributed amount in units of the currency received
  public var amount: Double

  /// The payment provider the user paid with
  public var paymentProvider: PaymentProvider?

  /// The campaign code of the campaign that the user came from
  public var campaignCode: TSet<String>?

  /// The ab tests the user was in on dotcom
  public var abTests: AbTestInfo?

  /// ISO-3166-aplha-2 country code representing where the user is from. It is either the country of the card used, or the country of the contributor s address
  public var countryCode: String?

  /// Page view id of the page the reader was on that lead them through to the contribution page e.g. by clicking on the Contribute Now button in the Epic component
  public var referrerPageViewId: String?

  /// Url of the page the reader was on that lead them through to the contribution page e.g. by clicking on the Contribute Now button in the Epic component
  public var referrerUrl: String?

  /// An ID that can be used to distinguish different instances of a given component type
  public var componentId: String?

  /// The type of component that the acquisition came from
  public var componentTypeV2: ComponentType?

  /// The source of the acquisition
  public var source: AcquisitionSource?

  /// Extra parameters only applicable to print products
  public var printOptions: PrintOptions?

  /// Platform on which the acquisition occurred e.g. Contributions, S&C
  public var platform: Platform?

  /// Length of the discount in months
  public var discountLengthInMonths: Int16?

  /// Amount of discount, as a percentage
  public var discountPercentage: Double?

  /// Promo code for the acquisition. Only applicable to subscriptions.
  public var promoCode: String?

  /// Any additional labels.
  /// In particular, extra information that is needed to calculate Annualised Value
  /// for this Acquisition (e.g. promotions like Guardian Weekly Six For Six) can go here.
  public var labels: TSet<String>?

  /// The identity id of a user
  public var identityId: String?

  /// Query string parameters associated with an acquisition
  public var queryParameters: TSet<QueryParameter>?


  public init(product: Product, paymentFrequency: PaymentFrequency, currency: String, amount: Double) {
    self.product = product
    self.paymentFrequency = paymentFrequency
    self.currency = currency
    self.amount = amount
  }

  public init(product: Product, paymentFrequency: PaymentFrequency, currency: String, amount: Double, paymentProvider: PaymentProvider?, campaignCode: TSet<String>?, abTests: AbTestInfo?, countryCode: String?, referrerPageViewId: String?, referrerUrl: String?, componentId: String?, componentTypeV2: ComponentType?, source: AcquisitionSource?, printOptions: PrintOptions?, platform: Platform?, discountLengthInMonths: Int16?, discountPercentage: Double?, promoCode: String?, labels: TSet<String>?, identityId: String?, queryParameters: TSet<QueryParameter>?) {
    self.product = product
    self.paymentFrequency = paymentFrequency
    self.currency = currency
    self.amount = amount
    self.paymentProvider = paymentProvider
    self.campaignCode = campaignCode
    self.abTests = abTests
    self.countryCode = countryCode
    self.referrerPageViewId = referrerPageViewId
    self.referrerUrl = referrerUrl
    self.componentId = componentId
    self.componentTypeV2 = componentTypeV2
    self.source = source
    self.printOptions = printOptions
    self.platform = platform
    self.discountLengthInMonths = discountLengthInMonths
    self.discountPercentage = discountPercentage
    self.promoCode = promoCode
    self.labels = labels
    self.identityId = identityId
    self.queryParameters = queryParameters
  }

}


