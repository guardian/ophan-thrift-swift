/**
 * Autogenerated by Thrift Compiler (0.21.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public enum PrintProduct : TEnum {
  case voucher_saturday
  case voucher_saturday_plus
  case voucher_weekly_and_saturday
  case voucher_weekly_and_saturday_plus
  case voucher_sunday
  case voucher_sunday_plus
  case voucer_weekend
  case voucer_weekend_plus
  case voucher_sixday
  case voucher_sixday_plus
  case voucher_everyday
  case voucher_everyday_plus
  case home_delivery_saturday
  case home_delivery_saturday_plus
  case home_delivery_weekly_and_saturday
  case home_delivery_weekly_and_saturday_plus
  case home_delivery_sunday
  case home_delivery_sunday_plus
  case home_delivery_weekend
  case home_delivery_weekend_plus
  case home_delivery_sixday
  case home_delivery_sixday_plus
  case home_delivery_everyday
  case home_delivery_everyday_plus
  case guardian_weekly
  case guardian_weekly_plus
  case voucher_weekend
  case voucher_weekend_plus

  public static func read(from proto: TProtocol) throws -> PrintProduct {
    let raw: Int32 = try proto.read()
    let new = PrintProduct(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(PrintProduct.self)")
    }
  }

  public init() {
    self = .voucher_saturday
  }

  public var rawValue: Int32 {
    switch self {
    case .voucher_saturday: return 1
    case .voucher_saturday_plus: return 2
    case .voucher_weekly_and_saturday: return 3
    case .voucher_weekly_and_saturday_plus: return 4
    case .voucher_sunday: return 5
    case .voucher_sunday_plus: return 6
    case .voucer_weekend: return 7
    case .voucer_weekend_plus: return 8
    case .voucher_sixday: return 9
    case .voucher_sixday_plus: return 10
    case .voucher_everyday: return 11
    case .voucher_everyday_plus: return 12
    case .home_delivery_saturday: return 13
    case .home_delivery_saturday_plus: return 14
    case .home_delivery_weekly_and_saturday: return 15
    case .home_delivery_weekly_and_saturday_plus: return 16
    case .home_delivery_sunday: return 17
    case .home_delivery_sunday_plus: return 18
    case .home_delivery_weekend: return 19
    case .home_delivery_weekend_plus: return 20
    case .home_delivery_sixday: return 21
    case .home_delivery_sixday_plus: return 22
    case .home_delivery_everyday: return 23
    case .home_delivery_everyday_plus: return 24
    case .guardian_weekly: return 25
    case .guardian_weekly_plus: return 26
    case .voucher_weekend: return 27
    case .voucher_weekend_plus: return 28
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 1: self = .voucher_saturday
    case 2: self = .voucher_saturday_plus
    case 3: self = .voucher_weekly_and_saturday
    case 4: self = .voucher_weekly_and_saturday_plus
    case 5: self = .voucher_sunday
    case 6: self = .voucher_sunday_plus
    case 7: self = .voucer_weekend
    case 8: self = .voucer_weekend_plus
    case 9: self = .voucher_sixday
    case 10: self = .voucher_sixday_plus
    case 11: self = .voucher_everyday
    case 12: self = .voucher_everyday_plus
    case 13: self = .home_delivery_saturday
    case 14: self = .home_delivery_saturday_plus
    case 15: self = .home_delivery_weekly_and_saturday
    case 16: self = .home_delivery_weekly_and_saturday_plus
    case 17: self = .home_delivery_sunday
    case 18: self = .home_delivery_sunday_plus
    case 19: self = .home_delivery_weekend
    case 20: self = .home_delivery_weekend_plus
    case 21: self = .home_delivery_sixday
    case 22: self = .home_delivery_sixday_plus
    case 23: self = .home_delivery_everyday
    case 24: self = .home_delivery_everyday_plus
    case 25: self = .guardian_weekly
    case 26: self = .guardian_weekly_plus
    case 27: self = .voucher_weekend
    case 28: self = .voucher_weekend_plus
    default: return nil
    }
  }
}


