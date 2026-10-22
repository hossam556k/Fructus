//
//  FruitModel.swift
//  Fructus
//
//  Created by MacBook Pro on 21/10/2026.
//

import SwiftUI

struct  Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradinetColor: [Color]
    var description: String
    var nutrition: [String]
}
