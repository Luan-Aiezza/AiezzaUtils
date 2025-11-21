// The Swift Programming Language
// https://docs.swift.org/swift-book
//  DateFormatterUtils.swift
//  AiezzaUtils

import Foundation

/// A collection of helper methods for working with dates and formatters.
public struct DateFormatterUtils {
    
    /// Returns a `DateFormatter` configured for the format `yyyy-MM-dd`.
    ///
    /// Useful for backend communication, logs, and predictable date formats.
    public static var standardFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        formatter.locale = Locale(identifier: "en_US_POSIX")
        formatter.timeZone = TimeZone(secondsFromGMT: 0)
        return formatter
    }
    
    /// Converts a `Date` to a formatted string using the standard formatter.
    ///
    /// - Parameter date: The date to convert.
    /// - Returns: A string representation in `yyyy-MM-dd` format.
    public static func formattedString(from date: Date) -> String {
        return standardFormatter.string(from: date)
    }
    
    /// Parses a `String` in `yyyy-MM-dd` format into a `Date`.
    ///
    /// - Parameter string: The date string to parse.
    /// - Returns: A `Date` if parsing succeeded; `nil` otherwise.
    public static func date(from string: String) -> Date? {
        return standardFormatter.date(from: string)
    }
}
