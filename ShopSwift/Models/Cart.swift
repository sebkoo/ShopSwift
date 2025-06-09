//
//  Cart.swift
//  ShopSwift
//
//  Created by Bonmyeong Koo - Vendor on 6/9/25.
//

import Foundation

struct Cart: Codable, Identifiable {
    let id: Int
    let userId: Int
    let date: String
    let products: [CartItem]
}
