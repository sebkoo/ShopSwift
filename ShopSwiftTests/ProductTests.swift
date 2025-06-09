//
//  ShopSwiftTests.swift
//  ShopSwiftTests
//
//  Created by Bonmyeong Koo - Vendor on 6/9/25.
//

import XCTest
@testable import ShopSwift

final class ProductTests: XCTestCase {

    func test_decodeProduct() throws {
        let json = """
            {
                "id": 1,
                "title": "Test Product",
                "price": 29.99,
                "description": "Description here",
                "category": "Category",
                "image": "https://example.com/image.png"
            }
            """.data(using: .utf8)!

        let product = try JSONDecoder().decode(Product.self, from: json)

        XCTAssertEqual(product.id, 1)
        XCTAssertEqual(product.title, "Test Product")
        XCTAssertEqual(product.price, 29.99)
    }
}
