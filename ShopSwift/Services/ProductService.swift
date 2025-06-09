//
//  ProductService.swift
//  ShopSwift
//
//  Created by Bonmyeong Koo - Vendor on 6/9/25.
//

import Foundation

protocol ProductServiceProtocol {
    func fetchProducts() async throws -> [Product]
}

final class ProductService: ProductServiceProtocol {
    private let baseURL = "https://fakestoreapi.com/products"

    func fetchProducts() async throws -> [Product] {
        let url = URL(string: baseURL)!
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([Product].self, from: data)
    }
}
