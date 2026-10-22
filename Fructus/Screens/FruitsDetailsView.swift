//
//  FruitsDetailsView.swift
//  Fructus
//
//  Created by MacBook Pro on 21/10/2026.
//

import SwiftUI

struct FruitsDetailsView: View {
    var fruit: Fruit
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(alignment: .center, spacing: 20) {
                    
                    // MARK: - HEADER
                    Header(fruit: fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        //TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(fruit.gradinetColor[1])
                        
                        NutrationView(fruit: fruit)
                        
                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        // SUBHEADLINE
                        Text("Learn more about\(fruit.title)".uppercased())
                            .foregroundStyle(fruit.gradinetColor[1])
                        // HEADLINE
                        Text(fruit.description)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        SourceLinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                    }
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .leading)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
            }
            .edgesIgnoringSafeArea(.top)
        }
    }
}

#Preview {
    FruitsDetailsView(fruit: fruitsData[0])
}
