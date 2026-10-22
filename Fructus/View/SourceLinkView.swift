//
//  SourceLinkView.swift
//  Fructus
//
//  Created by MacBook Pro on 21/10/2026.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox {
            HStack {
                Text("Content source")
                Spacer()
                Link("wikipedia", destination: URL(string: "https://wikipedia")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    SourceLinkView()
}
