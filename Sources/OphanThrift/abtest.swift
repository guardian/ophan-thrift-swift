/**
 * Autogenerated by Thrift Compiler (0.19.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


/// Represents the AbTest on the web and apps
public final class AbTest {

  /// the test that the user is participating in
  public var name: String

  /// the variant that they are seeing
  public var variant: String

  /// whether the test has been completed or not
  public var complete: Bool?

  /// the campaign codes associated with the variant
  public var campaignCodes: TSet<String>?


  public init(name: String, variant: String) {
    self.name = name
    self.variant = variant
  }

  public init(name: String, variant: String, complete: Bool?, campaignCodes: TSet<String>?) {
    self.name = name
    self.variant = variant
    self.complete = complete
    self.campaignCodes = campaignCodes
  }

}

public final class AbTestInfo {

  /// On the left hand side of the map, .
  /// On the right hand side of the map, the variant that they are seeing.
  public var tests: TSet<AbTest>


  public init(tests: TSet<AbTest>) {
    self.tests = tests
  }

}


