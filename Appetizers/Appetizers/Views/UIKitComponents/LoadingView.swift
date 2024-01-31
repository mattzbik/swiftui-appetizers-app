//
//  LoadingView.swift
//  Appetizers
//
//  Created by Matthew Zbik on 2024-01-22.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .ignoresSafeArea()
            ProgressView()
                .tint(.brandPrimary)
                .scaleEffect(2)
        }
    }
}
