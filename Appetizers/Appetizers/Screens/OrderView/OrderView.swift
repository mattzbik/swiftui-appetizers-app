//
//  OrderView.swift
//  Appetizers
//
//  Created by Matthew Zbik on 2024-01-19.
//

import SwiftUI

struct OrderView: View {
    
    @EnvironmentObject var order: Order
    
    var body: some View {
        NavigationStack {
            ZStack {
                if order.items.isEmpty {
                    EmptyState(imageName: "empty-order", message: "You have no items in your order. \nPlease add an appetizer!")
                } else {
                    VStack {
                        List {
                            ForEach(order.items) { appetizer in
                                AppetizerListCell(appetizer: appetizer)
                            }
                            .onDelete(perform: order.deleteItems)
                        }
                        .listStyle(.plain)
                        
                        Button {
                            print("order placed")
                        } label: {
//                            APButton(title: "\(order.totalPrice, specifier: "%.2f") - Place Order")
                            Text("\(order.totalPrice, specifier: "%.2f") - Place Order")
                        }
//                        .modifier(StandardButtonStyle())
                        .standardButtonStyle()
                        .padding(.bottom, 25)
                        
                    }
                }
            }
            .navigationTitle("🧾 Orders")
        }
    }
    
    
}

#Preview {
    OrderView()
}
