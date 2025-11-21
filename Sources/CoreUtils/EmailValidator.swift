// The Swift Programming Language
// https://docs.swift.org/swift-book
//  EmailValidator.swift
//  AiezzaUtils

import Foundation

/// A utility responsible for validating email addresses.
public struct EmailValidator {
    
    /// Validates whether a given string is a properly formatted email address.
    ///
    /// The validation uses a regular expression that checks:
    /// - Local part (before @)
    /// - Domain name
    /// - TLD with at least 2 characters
    ///
    /// - Parameter email: The email address to validate.
    /// - Returns: `true` if the email is valid, `false` otherwise.
    public static func isValid(_ email: String) -> Bool {
        let emailRegex = #"^[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$"#
        return NSPredicate(format: "SELF MATCHES %@", emailRegex)
            .evaluate(with: email)
    }
}
