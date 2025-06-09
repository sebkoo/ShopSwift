//
//  CartViewModel.swift
//  ShopSwift
//
//  Created by Bonmyeong Koo - Vendor on 6/9/25.
//

import Foundation

@MainActor
final class CartViewModel: ObservableObject {
    @Published var cartItems: [CartItem] = []
    @Published var isLoading = false
    @Published var errorMessage: String? = nil

    private let cartService: CartServiceProtocol

    init(cartService: CartServiceProtocol = CartService()) {
        self.cartService = cartService
    }

    func loadCart(for userId: Int) async {
        isLoading = true
        
        do {
            let cart = try await cartService.fetchCart(for: userId)
            cartItems = cart.products
        } catch {
            errorMessage = error.localizedDescription
        }
        isLoading = false
    }
}
