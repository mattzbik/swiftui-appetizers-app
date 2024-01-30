//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Matthew Zbik on 2024-01-19.
//

import SwiftUI

struct AppetizerListCell: View {
    
    let appetizer: Appetizer
    
    var body: some View {
        HStack {
//            Pro of using this is that images will cache and not require to re-download images.
//            AppetizerRemoteImage(urlString: appetizer.imageURL)
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 120, height: 90)
//                .clipShape(.rect(cornerRadius: 8))
            
            
//            Con of using AsyncImage is that images won't cache.
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .clipShape(.rect(cornerRadius: 8))
                
            } placeholder: {
                Image("food-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .clipShape(.rect(cornerRadius: 8))
            }
            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                Text("$\(appetizer.price, specifier:"%.2f")")
                    .foregroundStyle(.secondary)
                    .fontWeight(.semibold)
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    AppetizerListCell(appetizer: MockData.sampleAppetizer)
}
