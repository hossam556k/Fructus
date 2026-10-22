//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by MacBook Pro on 22/10/2026.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK:- PROPERTIES
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingsLabelView(labelText: "Fructs", labelImage: "info.circle")
        .padding()
}
