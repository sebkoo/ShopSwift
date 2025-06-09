//
//  CartView.swift
//  ShopSwift
//
//  Created by Bonmyeong Koo - Vendor on 6/9/25.
//

import SwiftUI

struct CartView: View {
    @StateObject private var viewModel = CartViewModel()
    let userId: Int = 1

    var body: some View {
        NavigationView {
            Group {
                if viewModel.isLoading {
                    ProgressView("Loading Cart...")
                } else if let error = viewModel.errorMessage {
                    Text("Error: \(error)")
                } else {
                    List(viewModel.cartItems) { item in
                        HStack {
                            VStack(alignment: .leading) {
                                Text(item.product.title)
                                Text("Quantity: \(item.quantity)")
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                            }
                            Spacer()
                            Text("$\(item.product.price, specifier: "%.2f")")
                        }
                    }
                }
            }
            .navigationTitle("Cart")
        }
        .task {
            await viewModel.loadCart(for: userId)
        }
    }
}

#Preview {
    CartView()
}
