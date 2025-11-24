//
//  AsyncImageView.swift
//  AiezzaUtils
//
//  Created by Luan Aiezza on 18/11/25.
//
#if os(iOS)
import UIKit
import SwiftUI

public struct AsyncImageView<Placeholder: View>: View {
    let url: URL
    let placeholder: () -> Placeholder
    
    @State private var uiImage: UIImage?
    
    public init(
        url: URL,
        @ViewBuilder placeholder: @escaping () -> Placeholder
    ) {
        self.url = url
        self.placeholder = placeholder
    }
    
    public var body: some View {
        Group {
            if let uiImage {
                Image(uiImage: uiImage)
                    .resizable()
                    .scaledToFit()
            } else {
                placeholder()
                    .task { await loadImage() }
            }
        }
    }
    
    private func loadImage() async {
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            self.uiImage = UIImage(data: data)
        } catch {
            print("Failed to load image:", error)
        }
    }
}

#endif
