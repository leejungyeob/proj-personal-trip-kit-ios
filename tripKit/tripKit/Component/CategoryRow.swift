//
//  CategoryRow.swift
//  tripKit
//
//  Created by 이중엽 on 7/19/25.
//

import SwiftUI

struct CategoryRow: View {
    let width: CGFloat
    let height: CGFloat
    
    var body: some View {
        VStack {
            
        }
        .frame(width: width, height: height)
        .background(Consts.Colors.primaryGray.color)
        .cornerRadius(10)
    }
}

#Preview {
    CategoryRow(width: 100, height: 200)
}
