//
//  DateUtils.swift
//  AiezzaUtils
//
//  Created by Luan Aiezza on 24/11/25.
//

import Foundation

public enum DateUtils {

    /// Converte uma data para timestamp (segundos).
    public static func timestamp(from date: Date) -> Int {
        Int(date.timeIntervalSince1970)
    }

    /// Cria uma `Date` a partir de um timestamp.
    public static func date(from timestamp: Int) -> Date {
        Date(timeIntervalSince1970: TimeInterval(timestamp))
    }
}
