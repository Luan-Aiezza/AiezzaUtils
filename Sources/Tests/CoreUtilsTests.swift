//
//  CoreUtilsTests.swift
//  AiezzaUtils
//
//  Created by Luan Aiezza on 21/11/25.
//

import XCTest
@testable import CoreUtils

final class CoreUtilsTests: XCTestCase {

    func testEmailValidator() {
        XCTAssertTrue(EmailValidator.isValid("test@example.com"))
        XCTAssertFalse(EmailValidator.isValid("invalid-email"))
    }
}
