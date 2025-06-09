//
//  CartTests.swift
//  ShopSwiftTests
//
//  Created by Bonmyeong Koo - Vendor on 6/9/25.
//

import XCTest
@testable import ShopSwift

final class CartTests: XCTestCase {

    func test_cartItemModel() {
        let product = Product(id: 1, title: "Test", price: 10.0, description: "", category: "", image: "")
        let cartItem = CartItem(product: product, quantity: 2)

        XCTAssertEqual(cartItem.id, 1)
        XCTAssertEqual(cartItem.quantity, 2)
        XCTAssertEqual(cartItem.product.title, "Test")
    }
}
