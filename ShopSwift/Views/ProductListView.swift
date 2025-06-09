//
//  ProductListView.swift
//  ShopSwift
//
//  Created by Bonmyeong Koo - Vendor on 6/9/25.
//

import SwiftUI

struct ProductListView: View {
    @StateObject private var viewModel = ProductListViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.products) { product in
                VStack(alignment: .leading) {
                    Text(product.title).bold()
                    Text("$\(product.price, specifier: "%.2f")")
                }
            }
            .navigationTitle("Products")
            .task {
                await viewModel.loadProducts()
            }
        }
    }
}

#Preview {
    ProductListView()
}
