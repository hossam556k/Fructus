//
//  NutrationView.swift
//  Fructus
//
//  Created by MacBook Pro on 21/10/2026.
//

import SwiftUI

struct NutrationView: View {
    
    var fruit: Fruit
    var nurtions: [String] = ["Engery", "Sugar", "Fat", "Protien", "Vitamins", "Minealrs"]
    
    var body: some View {
        
        GroupBox {
            DisclosureGroup ("nurtions value for 100gm") {
                
                ForEach(0..<nurtions.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nurtions[item])

                        }
                        .foregroundColor(fruit.gradinetColor[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                            
                    }
                    
                }
                
            }
        }
    }
}

#Preview {
    NutrationView(fruit: fruitsData[0])
}
