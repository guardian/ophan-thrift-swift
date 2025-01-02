/**
 * Autogenerated by Thrift Compiler (0.21.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public enum DeviceClass : TEnum {
  case desktop
  case anonymized
  case mobile
  case tablet
  case phone

  public static func read(from proto: TProtocol) throws -> DeviceClass {
    let raw: Int32 = try proto.read()
    let new = DeviceClass(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(DeviceClass.self)")
    }
  }

  public init() {
    self = .desktop
  }

  public var rawValue: Int32 {
    switch self {
    case .desktop: return 1
    case .anonymized: return 2
    case .mobile: return 3
    case .tablet: return 4
    case .phone: return 5
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 1: self = .desktop
    case 2: self = .anonymized
    case 3: self = .mobile
    case 4: self = .tablet
    case 5: self = .phone
    default: return nil
    }
  }
}


