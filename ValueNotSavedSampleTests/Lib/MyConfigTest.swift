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

    func testCIから環境変数を差しこめているか() {
        let actual = MyConfig.variable
        XCTAssertEqual("secret(notprint$able", actual)
    }

    func test別の変数が取れるか() {
        let actual = MyConfig.variableDev
        XCTAssertNotNil(actual)
        XCTAssertNotEqual("", actual)
    }

    func test二つの変数の値が異なるか() {
        let actual1 = MyConfig.variable
        let actual2 = MyConfig.variableDev
        XCTAssertNotEqual(actual1, actual2)
    }

    func test二つ目の変数が外部から設定できているか() {
        let actual = MyConfig.variableDev
        XCTAssertEqual("thi$ i$ a lIttLe bit compLex vaLue.", actual)
    }
}
