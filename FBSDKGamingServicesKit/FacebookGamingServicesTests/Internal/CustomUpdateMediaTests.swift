/*
 * Copyright (c) Facebook, Inc. and its affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

@testable import FacebookGamingServices
import XCTest

class CustomUpdateMediaTests: XCTestCase {
  // swiftlint:disable force_unwrapping
  let fakeGIF = FacebookGIF(withUrl: URL(string: "www.test.com")!)
  let fakeVideo = FacebookVideo(withUrl: URL(string: "www.test.com")!)

  func testIntilizationWithGif() throws {
    let media = try XCTUnwrap(CustomUpdateMedia(media: fakeGIF))
    let gif = try XCTUnwrap(media.gif)

    XCTAssertNotNil(media)
    XCTAssertNil(media.video)
    XCTAssertEqual(gif.url, fakeGIF.url)
  }

  func testIntilizationWithVideo() throws {
    let media = try XCTUnwrap(CustomUpdateMedia(media: fakeVideo))
    let video = try XCTUnwrap(media.video)

    XCTAssertNotNil(media)
    XCTAssertNil(media.gif)
    XCTAssertEqual(video.url, fakeVideo.url)
  }
}

extension CustomUpdateMedia {

  static func == (lhs: CustomUpdateMedia, rhs: CustomUpdateMedia) -> Bool {
    if lhs.gif != rhs.gif || lhs.video != rhs.video {
      return false
    }
    return true
  }
}
