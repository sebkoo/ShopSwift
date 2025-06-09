//
//  Product.swift
//  ShopSwift
//
//  Created by Bonmyeong Koo - Vendor on 6/9/25.
//

import Foundation

struct Product: Identifiable, Codable, Equatable {
    let id: Int
    let title: String
    let price: Double
    let description: String
    let category: String
    let image: String
}
