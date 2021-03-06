//
//  MyConfigTest.swift
//  ValueNotSavedSampleTests
//
//  Created by Ryo Oomichi on 2020/01/17.
//  Copyright © 2020 Ryo Oomichi. All rights reserved.
//

import XCTest

@testable import ValueNotSavedSample

class MyConfigTest: XCTestCase {
    func test環境変数が取れるか() {
        let actual = MyConfig.variable
        XCTAssertNotNil(actual)
        XCTAssertNotEqual("", actual)
    }

    func test別の変数が取れるか() {
        let actual = MyConfig.variableDev
        XCTAssertNotNil(actual)
        XCTAssertNotEqual("", actual)
    }
}
