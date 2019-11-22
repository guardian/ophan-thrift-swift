/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public func ==(lhs: Acquisition, rhs: Acquisition) -> Bool {
  return
    (lhs.product == rhs.product) &&
    (lhs.paymentFrequency == rhs.paymentFrequency) &&
    (lhs.currency == rhs.currency) &&
    (lhs.amount == rhs.amount) &&
    (lhs.paymentProvider == rhs.paymentProvider) &&
    (lhs.campaignCode == rhs.campaignCode) &&
    (lhs.abTests == rhs.abTests) &&
    (lhs.countryCode == rhs.countryCode) &&
    (lhs.referrerPageViewId == rhs.referrerPageViewId) &&
    (lhs.referrerUrl == rhs.referrerUrl) &&
    (lhs.componentId == rhs.componentId) &&
    (lhs.componentTypeV2 == rhs.componentTypeV2) &&
    (lhs.source == rhs.source) &&
    (lhs.printOptions == rhs.printOptions) &&
    (lhs.platform == rhs.platform) &&
    (lhs.discountLengthInMonths == rhs.discountLengthInMonths) &&
    (lhs.discountPercentage == rhs.discountPercentage) &&
    (lhs.promoCode == rhs.promoCode) &&
    (lhs.labels == rhs.labels) &&
    (lhs.identityId == rhs.identityId) &&
    (lhs.queryParameters == rhs.queryParameters)
}

extension Acquisition : CustomStringConvertible {

  public var description : String {
    var desc = "Acquisition("
    desc += "product=\(String(describing: self.product)), "
    desc += "paymentFrequency=\(String(describing: self.paymentFrequency)), "
    desc += "currency=\(String(describing: self.currency)), "
    desc += "amount=\(String(describing: self.amount)), "
    desc += "paymentProvider=\(String(describing: self.paymentProvider)), "
    desc += "campaignCode=\(String(describing: self.campaignCode)), "
    desc += "abTests=\(String(describing: self.abTests)), "
    desc += "countryCode=\(String(describing: self.countryCode)), "
    desc += "referrerPageViewId=\(String(describing: self.referrerPageViewId)), "
    desc += "referrerUrl=\(String(describing: self.referrerUrl)), "
    desc += "componentId=\(String(describing: self.componentId)), "
    desc += "componentTypeV2=\(String(describing: self.componentTypeV2)), "
    desc += "source=\(String(describing: self.source)), "
    desc += "printOptions=\(String(describing: self.printOptions)), "
    desc += "platform=\(String(describing: self.platform)), "
    desc += "discountLengthInMonths=\(String(describing: self.discountLengthInMonths)), "
    desc += "discountPercentage=\(String(describing: self.discountPercentage)), "
    desc += "promoCode=\(String(describing: self.promoCode)), "
    desc += "labels=\(String(describing: self.labels)), "
    desc += "identityId=\(String(describing: self.identityId)), "
    desc += "queryParameters=\(String(describing: self.queryParameters))"
    return desc
  }

}

extension Acquisition : Hashable {

  public var hashValue : Int {
    let prime = 31
    var result = 1
    result = prime &* result &+ (product.hashValue)
    result = prime &* result &+ (paymentFrequency.hashValue)
    result = prime &* result &+ (currency.hashValue)
    result = prime &* result &+ (amount.hashValue)
    result = prime &* result &+ (paymentProvider?.hashValue ?? 0)
    result = prime &* result &+ (campaignCode?.hashValue ?? 0)
    result = prime &* result &+ (abTests?.hashValue ?? 0)
    result = prime &* result &+ (countryCode?.hashValue ?? 0)
    result = prime &* result &+ (referrerPageViewId?.hashValue ?? 0)
    result = prime &* result &+ (referrerUrl?.hashValue ?? 0)
    result = prime &* result &+ (componentId?.hashValue ?? 0)
    result = prime &* result &+ (componentTypeV2?.hashValue ?? 0)
    result = prime &* result &+ (source?.hashValue ?? 0)
    result = prime &* result &+ (printOptions?.hashValue ?? 0)
    result = prime &* result &+ (platform?.hashValue ?? 0)
    result = prime &* result &+ (discountLengthInMonths?.hashValue ?? 0)
    result = prime &* result &+ (discountPercentage?.hashValue ?? 0)
    result = prime &* result &+ (promoCode?.hashValue ?? 0)
    result = prime &* result &+ (labels?.hashValue ?? 0)
    result = prime &* result &+ (identityId?.hashValue ?? 0)
    result = prime &* result &+ (queryParameters?.hashValue ?? 0)
    return result
  }

}

extension Acquisition : TStruct {

  public static var fieldIds: [String: Int32] {
    return ["product": 1, "paymentFrequency": 2, "currency": 3, "amount": 4, "paymentProvider": 6, "campaignCode": 7, "abTests": 8, "countryCode": 9, "referrerPageViewId": 10, "referrerUrl": 11, "componentId": 12, "componentTypeV2": 14, "source": 15, "printOptions": 16, "platform": 19, "discountLengthInMonths": 20, "discountPercentage": 21, "promoCode": 22, "labels": 23, "identityId": 24, "queryParameters": 25, ]
  }

  public static var structName: String { return "Acquisition" }

  public static func read(from proto: TProtocol) throws -> Acquisition {
    _ = try proto.readStructBegin()
    var product: Product!
    var paymentFrequency: PaymentFrequency!
    var currency: String!
    var amount: Double!
    var paymentProvider: PaymentProvider?
    var campaignCode: TSet<String>?
    var abTests: AbTestInfo?
    var countryCode: String?
    var referrerPageViewId: String?
    var referrerUrl: String?
    var componentId: String?
    var componentTypeV2: ComponentType?
    var source: AcquisitionSource?
    var printOptions: PrintOptions?
    var platform: Platform?
    var discountLengthInMonths: Int16?
    var discountPercentage: Double?
    var promoCode: String?
    var labels: TSet<String>?
    var identityId: String?
    var queryParameters: TSet<QueryParameter>?

    fields: while true {

      let (_, fieldType, fieldID) = try proto.readFieldBegin()

      switch (fieldID, fieldType) {
        case (_, .stop):            break fields
        case (1, .i32):             product = try Product.read(from: proto)
        case (2, .i32):             paymentFrequency = try PaymentFrequency.read(from: proto)
        case (3, .string):           currency = try String.read(from: proto)
        case (4, .double):           amount = try Double.read(from: proto)
        case (6, .i32):             paymentProvider = try PaymentProvider.read(from: proto)
        case (7, .set):             campaignCode = try TSet<String>.read(from: proto)
        case (8, .struct):           abTests = try AbTestInfo.read(from: proto)
        case (9, .string):           countryCode = try String.read(from: proto)
        case (10, .string):           referrerPageViewId = try String.read(from: proto)
        case (11, .string):           referrerUrl = try String.read(from: proto)
        case (12, .string):           componentId = try String.read(from: proto)
        case (14, .i32):             componentTypeV2 = try ComponentType.read(from: proto)
        case (15, .i32):             source = try AcquisitionSource.read(from: proto)
        case (16, .struct):           printOptions = try PrintOptions.read(from: proto)
        case (19, .i32):             platform = try Platform.read(from: proto)
        case (20, .i16):             discountLengthInMonths = try Int16.read(from: proto)
        case (21, .double):           discountPercentage = try Double.read(from: proto)
        case (22, .string):           promoCode = try String.read(from: proto)
        case (23, .set):             labels = try TSet<String>.read(from: proto)
        case (24, .string):           identityId = try String.read(from: proto)
        case (25, .set):             queryParameters = try TSet<QueryParameter>.read(from: proto)
        case let (_, unknownType):  try proto.skip(type: unknownType)
      }

      try proto.readFieldEnd()
    }

    try proto.readStructEnd()
    // Required fields
    try proto.validateValue(product, named: "product")
    try proto.validateValue(paymentFrequency, named: "paymentFrequency")
    try proto.validateValue(currency, named: "currency")
    try proto.validateValue(amount, named: "amount")

    return Acquisition(product: product, paymentFrequency: paymentFrequency, currency: currency, amount: amount, paymentProvider: paymentProvider, campaignCode: campaignCode, abTests: abTests, countryCode: countryCode, referrerPageViewId: referrerPageViewId, referrerUrl: referrerUrl, componentId: componentId, componentTypeV2: componentTypeV2, source: source, printOptions: printOptions, platform: platform, discountLengthInMonths: discountLengthInMonths, discountPercentage: discountPercentage, promoCode: promoCode, labels: labels, identityId: identityId, queryParameters: queryParameters)
  }

}


