/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

import Foundation

import Thrift


/// Information about the referrer - previous page - that the reader navigated to
/// this one from.
public final class Referrer {

  /// Web: The "raw" value in here is the value of
  /// document.referrer as reported by the browser
  /// Native app: If this is populated, we will use it.
  /// If it is not populated, it will be synthesised using
  /// the nativeAppSource field.
  public var url: Url?

  /// the component that was clicked on for this referral,
  /// if the previous page was served by the guardian
  public var component: String?

  /// the platform of the referrer,
  /// if the previous page was served by the guardian
  public var platform: Platform?

  /// the viewId of the referrer,
  /// if the previous page was served by the guardian
  public var viewId: String?

  /// if this was from a guardian email, what email it was
  public var email: String?

  /// If this referral was from a native app, the source of the referral
  public var nativeAppSource: Source?

  /// If this referral was from google, and we have additional data on the query string,
  /// the values we got.
  public var google: GoogleReferral?

  /// The link name associated with the element clicked.
  public var linkName: LinkName?

  public var tagIdFollowed: String?


  public init() { }
  public init(url: Url?, component: String?, linkName: LinkName?, platform: Platform?, viewId: String?, email: String?, nativeAppSource: Source?, google: GoogleReferral?, tagIdFollowed: String?) {
    self.url = url
    self.component = component
    self.linkName = linkName
    self.platform = platform
    self.viewId = viewId
    self.email = email
    self.nativeAppSource = nativeAppSource
    self.google = google
    self.tagIdFollowed = tagIdFollowed
  }

}


