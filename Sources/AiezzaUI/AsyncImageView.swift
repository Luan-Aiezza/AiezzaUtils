//
//  AsyncImageView.swift
//  AiezzaUtils
//
//  Created by Luan Aiezza on 18/11/25.
//
#if os(iOS)
import UIKit
import SwiftUI

public struct AsyncImageView: View {
    let url: URL
    
    @State private var image: UIImage?
    
    public init(url: URL) {
        self.url = url
    }
    
    public var body: some View {
        Group {
            if let image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else {
                ProgressView()
                    .task { await loadImage() }
            }
        }
    }
    
    private func loadImage() async {
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            self.image = UIImage(data: data)
        } catch {
            print("Failed to load image:", error)
        }
    }
}
#endif
