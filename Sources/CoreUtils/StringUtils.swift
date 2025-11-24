//
//  StringUtils.swift
//  AiezzaUtils
//
//  Created by Luan Aiezza on 24/11/25.
//

import Foundation

public extension String {
    
    /// Remove espaços em branco no início e no fim da string.
    func trimmed() -> String {
        self.trimmingCharacters(in: .whitespacesAndNewlines)
    }

    /// Retorna true se a string não estiver vazia após trim.
    var isNotEmpty: Bool {
        !self.trimmed().isEmpty
    }
}
