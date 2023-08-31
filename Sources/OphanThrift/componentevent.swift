/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


public enum Action : TEnum {
  case insert
  case view
  case expand
  case like
  case dislike
  case subscribe
  case answer
  case vote
  case click
  case sign_in
  case create_account
  case accept_default_consent
  case manage_consent
  case consent_accept_all
  case consent_reject_all
  case stick
  case close
  case `return`

  public static func read(from proto: TProtocol) throws -> Action {
    let raw: Int32 = try proto.read()
    let new = Action(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(Action.self)")
    }
  }

  public init() {
    self = .insert
  }

  public var rawValue: Int32 {
    switch self {
    case .insert: return 1
    case .view: return 2
    case .expand: return 3
    case .like: return 4
    case .dislike: return 5
    case .subscribe: return 6
    case .answer: return 7
    case .vote: return 8
    case .click: return 9
    case .sign_in: return 10
    case .create_account: return 11
    case .accept_default_consent: return 12
    case .manage_consent: return 13
    case .consent_accept_all: return 14
    case .consent_reject_all: return 15
    case .stick: return 16
    case .close: return 17
    case .`return`: return 18
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 1: self = .insert
    case 2: self = .view
    case 3: self = .expand
    case 4: self = .like
    case 5: self = .dislike
    case 6: self = .subscribe
    case 7: self = .answer
    case 8: self = .vote
    case 9: self = .click
    case 10: self = .sign_in
    case 11: self = .create_account
    case 12: self = .accept_default_consent
    case 13: self = .manage_consent
    case 14: self = .consent_accept_all
    case 15: self = .consent_reject_all
    case 16: self = .stick
    case 17: self = .close
    case 18: self = .`return`
    default: return nil
    }
  }
}

public enum ComponentType : TEnum {
  case readers_questions_atom
  case qanda_atom
  case profile_atom
  case guide_atom
  case timeline_atom
  case newsletter_subscription
  case surveys_questions
  case acquisitions_epic
  case acquisitions_engagement_banner
  case acquisitions_thank_you_epic
  case acquisitions_header
  case acquisitions_footer
  case acquisitions_interactive_slice
  case acquisitions_nugget
  case acquisitions_standfirst
  case acquisitions_thrasher
  case acquisitions_editorial_link
  case acquisitions_manage_my_account
  case acquisitions_button
  case acquisitions_other
  case app_advert
  case app_audio
  case app_button
  case app_card
  case app_crosswords
  case app_engagement_banner
  case app_epic
  case app_gallery
  case app_link
  case app_navigation_item
  case app_screen
  case app_thrasher
  case app_video
  case audio_atom
  case chart_atom
  case acquisitions_merchandising
  case acquisitions_house_ads
  case sign_in_gate
  case acquisitions_subscriptions_banner
  case mobile_sticky_ad
  case identity_authentication
  case retention_engagement_banner
  case acquisition_support_site
  case retention_epic
  case consent
  case live_blog_pinned_post
  case sticky_video
  case key_event_card
  case retention_header
  case slideshow
  case app_feature
  case card
  case carousel
  case container

  public static func read(from proto: TProtocol) throws -> ComponentType {
    let raw: Int32 = try proto.read()
    let new = ComponentType(rawValue: raw)
    if let unwrapped = new {
      return unwrapped
    } else {
      throw TProtocolError(error: .invalidData,
                           message: "Invalid enum value (\(raw)) for \(ComponentType.self)")
    }
  }

  public init() {
    self = .readers_questions_atom
  }

  public var rawValue: Int32 {
    switch self {
    case .readers_questions_atom: return 1
    case .qanda_atom: return 2
    case .profile_atom: return 3
    case .guide_atom: return 4
    case .timeline_atom: return 5
    case .newsletter_subscription: return 6
    case .surveys_questions: return 7
    case .acquisitions_epic: return 8
    case .acquisitions_engagement_banner: return 9
    case .acquisitions_thank_you_epic: return 10
    case .acquisitions_header: return 11
    case .acquisitions_footer: return 12
    case .acquisitions_interactive_slice: return 13
    case .acquisitions_nugget: return 14
    case .acquisitions_standfirst: return 15
    case .acquisitions_thrasher: return 16
    case .acquisitions_editorial_link: return 17
    case .acquisitions_manage_my_account: return 18
    case .acquisitions_button: return 19
    case .acquisitions_other: return 20
    case .app_advert: return 21
    case .app_audio: return 22
    case .app_button: return 23
    case .app_card: return 24
    case .app_crosswords: return 25
    case .app_engagement_banner: return 26
    case .app_epic: return 27
    case .app_gallery: return 28
    case .app_link: return 29
    case .app_navigation_item: return 30
    case .app_screen: return 31
    case .app_thrasher: return 32
    case .app_video: return 33
    case .audio_atom: return 34
    case .chart_atom: return 35
    case .acquisitions_merchandising: return 36
    case .acquisitions_house_ads: return 37
    case .sign_in_gate: return 38
    case .acquisitions_subscriptions_banner: return 39
    case .mobile_sticky_ad: return 40
    case .identity_authentication: return 41
    case .retention_engagement_banner: return 42
    case .acquisition_support_site: return 43
    case .retention_epic: return 44
    case .consent: return 45
    case .live_blog_pinned_post: return 46
    case .sticky_video: return 47
    case .key_event_card: return 48
    case .retention_header: return 49
    case .slideshow: return 50
    case .app_feature: return 51
    case .card: return 52
    case .carousel: return 53
    case .container: return 54
    }
  }

  public init?(rawValue: Int32) {
    switch rawValue {
    case 1: self = .readers_questions_atom
    case 2: self = .qanda_atom
    case 3: self = .profile_atom
    case 4: self = .guide_atom
    case 5: self = .timeline_atom
    case 6: self = .newsletter_subscription
    case 7: self = .surveys_questions
    case 8: self = .acquisitions_epic
    case 9: self = .acquisitions_engagement_banner
    case 10: self = .acquisitions_thank_you_epic
    case 11: self = .acquisitions_header
    case 12: self = .acquisitions_footer
    case 13: self = .acquisitions_interactive_slice
    case 14: self = .acquisitions_nugget
    case 15: self = .acquisitions_standfirst
    case 16: self = .acquisitions_thrasher
    case 17: self = .acquisitions_editorial_link
    case 18: self = .acquisitions_manage_my_account
    case 19: self = .acquisitions_button
    case 20: self = .acquisitions_other
    case 21: self = .app_advert
    case 22: self = .app_audio
    case 23: self = .app_button
    case 24: self = .app_card
    case 25: self = .app_crosswords
    case 26: self = .app_engagement_banner
    case 27: self = .app_epic
    case 28: self = .app_gallery
    case 29: self = .app_link
    case 30: self = .app_navigation_item
    case 31: self = .app_screen
    case 32: self = .app_thrasher
    case 33: self = .app_video
    case 34: self = .audio_atom
    case 35: self = .chart_atom
    case 36: self = .acquisitions_merchandising
    case 37: self = .acquisitions_house_ads
    case 38: self = .sign_in_gate
    case 39: self = .acquisitions_subscriptions_banner
    case 40: self = .mobile_sticky_ad
    case 41: self = .identity_authentication
    case 42: self = .retention_engagement_banner
    case 43: self = .acquisition_support_site
    case 44: self = .retention_epic
    case 45: self = .consent
    case 46: self = .live_blog_pinned_post
    case 47: self = .sticky_video
    case 48: self = .key_event_card
    case 49: self = .retention_header
    case 50: self = .slideshow
    case 51: self = .app_feature
    case 52: self = .card
    case 53: self = .carousel
    case 54: self = .container
    default: return nil
    }
  }
}

public final class ComponentV2 {

  public var componentType: ComponentType

  /// An ID that can be used to distinguish different instances of a given ComponentType
  public var id: String?

  /// The products related to the component
  /// e.g. a banner with two buttons, one asking for people to become Supporters
  /// and one asking for contributions would contain `CONTRIBUTION` and `SUPPORTER`
  public var products: TSet<Product>

  /// An optional identifier for the campaign the component was used in
  public var campaignCode: String?

  /// Additional labels relating to the component
  public var labels: TSet<String>


  public init(componentType: ComponentType, products: TSet<Product>, labels: TSet<String>) {
    self.componentType = componentType
    self.products = products
    self.labels = labels
  }

  public init(componentType: ComponentType, id: String?, products: TSet<Product>, campaignCode: String?, labels: TSet<String>) {
    self.componentType = componentType
    self.id = id
    self.products = products
    self.campaignCode = campaignCode
    self.labels = labels
  }

}

/// An event representing an action taken against a component on the web or apps.
public final class ComponentEvent {

  /// The component where the action happened
  public var component: ComponentV2

  /// The action that took place
  public var action: Action

  /// Any additional data on the event, e.g. further information on a "click" event
  public var value: String?

  /// A unique identifier for the component event e.g. a UUID
  public var id: String?

  /// If the event was triggered as part of an A/B test, this identifies the test and variant.
  public var abTest: AbTest?

  /// A targeting A/B test can be used to measure the impact of different targeting rules, independent of the primary A/B test.
  public var targetingAbTest: AbTest?


  public init(component: ComponentV2, action: Action) {
    self.component = component
    self.action = action
  }

  public init(component: ComponentV2, action: Action, value: String?, id: String?, abTest: AbTest?, targetingAbTest: AbTest?) {
    self.component = component
    self.action = action
    self.value = value
    self.id = id
    self.abTest = abTest
    self.targetingAbTest = targetingAbTest
  }

}


