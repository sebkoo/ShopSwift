//
//  CartItem.swift
//  ShopSwift
//
//  Created by Bonmyeong Koo - Vendor on 6/9/25.
//

import Foundation

struct CartItem: Codable, Equatable, Identifiable {
    var id: Int { product.id }
    let product: Product
    var quantity: Int
}
