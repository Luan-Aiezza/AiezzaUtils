//
//  SafeCast.swift
//  AiezzaUtils
//
//  Created by Luan Aiezza on 24/11/25.
//

import Foundation

/// Faz cast seguro entre tipos, retornando nil caso falhe.
public func safeCast<T>(_ value: Any) -> T? {
    return value as? T
}
