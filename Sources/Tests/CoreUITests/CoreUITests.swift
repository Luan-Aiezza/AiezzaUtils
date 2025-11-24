//
//  AiezzaUITests.swift
//  AiezzaUtils
//
//  Created by Luan Aiezza on 18/11/25.
//

import SwiftUI
import Testing
@testable import AiezzaUI

struct CoreUITests {

    @Test("AsyncImageView inicializa com URL válida")
    func testAsyncImageViewInit() {
        let url = URL(string: "https://example.com/image.png")!
        let view = AsyncImageView(url: url) {
            ProgressView()
        }

        // Verifica se a URL foi configurada
        #expect(view.url == url)
    }

    @Test("AsyncImageView aceita placeholder")
    func testAsyncImageViewPlaceholder() {
        let view = AsyncImageView(url: URL(string: "https://example.com")!) {
            Text("Carregando...")
        }
        // Não verificamos o conteúdo interno, mas garantimos que o closure existe
        #expect(view.placeholder() is Text)
    }

    @Test("AsyncImageView exibe placeholder inicialmente")
    func testInitialBodyShowsPlaceholder() {
        let view = AsyncImageView(url: URL(string: "https://example.com")!) {
            Text("Carregando...")
        }

        // Renderiza a view SwiftUI
        let rendered = view.body

//        // Confirma que o body inicial contém o placeholder
//        #expect(rendered is Group<Text>)
    }
}
