//
//  SettingsRowView.swift
//  Fructus
//
//  Created by MacBook Pro on 22/10/2026.
//

import SwiftUI

struct SettingsRowView: View {
    
    //MARK: - PROPERTIES
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        HStack {
            Text(name).foregroundColor(.gray)
            Spacer()
            if (content != nil) {
                Text(content!)
            } else if (linkLabel != nil && linkDestination != nil) {
                Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
            }
            else {
                EmptyView()
            }
        }
    }
}

#Preview {
    SettingsRowView(name: "Developer", content: "John / Jane")
}
