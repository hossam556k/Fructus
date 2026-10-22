//
//  FruitRowView.swift
//  Fructus
//
//  Created by MacBook Pro on 21/10/2026.
//


import SwiftUI

struct FruitRowView: View {

    // MARK: - PROPERTIES
    let fruit: Fruit

    // MARK: - BODY
    var body: some View {
        HStack(spacing: 16) {

            // Fruit Image
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .padding(10)
                .frame(width: 92, height: 92)
                .background {
                    LinearGradient(
                        colors: fruit.gradinetColor,
                        startPoint: .topLeading,
                        endPoint: .bottomTrailing
                    )
                }
                .clipShape(RoundedRectangle(cornerRadius: 22))
                .shadow(
                    color: fruit.gradinetColor.first?.opacity(0.25) ?? .clear,
                    radius: 8,
                    x: 0,
                    y: 5
                )

            // Fruit Information
            VStack(alignment: .leading, spacing: 7) {
                Text(fruit.title)
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                    .foregroundStyle(.primary)

                Text(fruit.headline)
                    .font(.system(size: 13, weight: .medium))
                    .foregroundStyle(.secondary)
                    .lineLimit(2)
                    .multilineTextAlignment(.leading)
            }

            Spacer(minLength: 0)

            // Chevron
            Image(systemName: "chevron.right")
                .font(.system(size: 13, weight: .bold))
                .foregroundStyle(.secondary)
                .frame(width: 34, height: 34)
                .background(Color.primary.opacity(0.05))
                .clipShape(Circle())
        }
        .padding(12)
        .background {
            RoundedRectangle(cornerRadius: 28)
                .fill(Color(uiColor: .secondarySystemBackground))
        }
        .overlay {
            RoundedRectangle(cornerRadius: 28)
                .strokeBorder(
                    Color.primary.opacity(0.04),
                    lineWidth: 1
                )
        }
        .shadow(
            color: .black.opacity(0.05),
            radius: 12,
            x: 0,
            y: 5
        )
        .padding(.vertical, 6)
        .contentShape(RoundedRectangle(cornerRadius: 28))
    }
}

#Preview {
    FruitRowView(fruit: fruitsData[0])
        .padding()
}


