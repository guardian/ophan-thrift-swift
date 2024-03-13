/**
 * Autogenerated by Thrift Compiler (0.19.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public enum SubscriptionType : TEnum {
  case free
  case store
  case print
  case free_with_expired_store
  case free_with_expired_print
  case digital_pack

  public static func read(from proto: TProtocol) throws -> SubscriptionType {
    let raw: Int32 = try proto.read()
    let new = SubscriptionType(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(SubscriptionType.self)")
    }
  }

  public init() {
    self = .free
  }

  public var rawValue: Int32 {
    switch self {
    case .free: return 1
    case .store: return 2
    case .print: return 4
    case .free_with_expired_store: return 3
    case .free_with_expired_print: return 5
    case .digital_pack: return 6
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 1: self = .free
    case 2: self = .store
    case 4: self = .print
    case 3: self = .free_with_expired_store
    case 5: self = .free_with_expired_print
    case 6: self = .digital_pack
    default: return nil
    }
  }
}

public enum MembershipTier : TEnum {
  case friend
  case staff
  case supporter
  case partner
  case patron

  public static func read(from proto: TProtocol) throws -> MembershipTier {
    let raw: Int32 = try proto.read()
    let new = MembershipTier(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(MembershipTier.self)")
    }
  }

  public init() {
    self = .friend
  }

  public var rawValue: Int32 {
    switch self {
    case .friend: return 1
    case .staff: return 2
    case .supporter: return 3
    case .partner: return 4
    case .patron: return 5
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 1: self = .friend
    case 2: self = .staff
    case 3: self = .supporter
    case 4: self = .partner
    case 5: self = .patron
    default: return nil
    }
  }
}


