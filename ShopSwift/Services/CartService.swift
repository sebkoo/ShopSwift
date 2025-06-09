//
//  CartService.swift
//  ShopSwift
//
//  Created by Bonmyeong Koo - Vendor on 6/9/25.
//

import Foundation

protocol CartServiceProtocol {
    func fetchCart(for userId: Int) async throws -> Cart
}

final class CartService: CartServiceProtocol {
    private let baseURL = "https://fakestoreapi.com/carts/user/"

    func fetchCart(for userId: Int) async throws -> Cart {
        let url = URL(string: baseURL + "\(userId)")!
        let (data, _) = try await URLSession.shared.data(from: url)
        let carts = try JSONDecoder().decode([Cart].self, from: data)
        return carts.first! // Simplified for example
    }
}
