//
//  CoreUtilsTests.swift
//  AiezzaUtils
//
//  Created by Luan Aiezza on 21/11/25.
//

import Testing
@testable import CoreUtils
import Foundation

struct CoreUtilsTests {

    // MARK: - EmailValidator

    @Test("EmailValidator valida emails corretamente")
    func testEmailValidator() {
        #expect(EmailValidator.isValid("test@example.com"))
        #expect(!EmailValidator.isValid("invalid-email"))
    }

    @Test("Valida diferentes formatos de email")
    func testVariousEmails() {
        #expect(EmailValidator.isValid("john.doe@domain.co"))
        #expect(EmailValidator.isValid("user+tag@domain.io"))
        #expect(!EmailValidator.isValid("@domain.com"))
        #expect(!EmailValidator.isValid("user@"))
        #expect(!EmailValidator.isValid("user@domain"))
    }

    // MARK: - Email edge cases

    @Test("EmailValidator lida com edge cases")
    func testEmailEdgeCases() {
        #expect(!EmailValidator.isValid(""))
        #expect(!EmailValidator.isValid("   "))
        #expect(!EmailValidator.isValid("user@@domain.com"))
        #expect(!EmailValidator.isValid("user@domain.com."))
    }

    // MARK: - StringUtils (exemplo)

    @Test("StringUtils remove espaços corretamente")
    func testTrimmed() {
        #expect("  hello ".trimmed() == "hello")
        #expect(" no-spaces ".trimmed() == "no-spaces")
        #expect("".trimmed() == "")
    }

    @Test("StringUtils verifica se string não está vazia")
    func testIsNotEmpty() {
        #expect("Hello".isNotEmpty)
        #expect(!"".isNotEmpty)
        #expect(!"   ".isNotEmpty)
    }

    // MARK: - DateUtils (exemplo)

    @Test("DateUtils converte corretamente para timestamp")
    func testTimestampConversion() {
        let date = Date(timeIntervalSince1970: 1000)
        #expect(DateUtils.timestamp(from: date) == 1000)
    }

    @Test("DateUtils cria Date a partir de timestamp")
    func testDateFromTimestamp() {
        let date = DateUtils.date(from: 2000)
        #expect(Int(date.timeIntervalSince1970) == 2000)
    }

    // MARK: - SafeCast utility (exemplo)

    @Test("SafeCast funciona para tipos compatíveis")
    func testSafeCastSuccess() {
        let value: Any = "string"
        let casted: String? = safeCast(value)
        #expect(casted == "string")
    }

    @Test("SafeCast retorna nil para tipos incompatíveis")
    func testSafeCastFailure() {
        let value: Any = 123
        let casted: String? = safeCast(value)
        #expect(casted == nil)
    }
}
