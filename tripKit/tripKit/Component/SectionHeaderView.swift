//
//  SectionHeaderView.swift
//  tripKit
//
//  Created by 이중엽 on 7/19/25.
//

import SwiftUI

struct SectionHeaderView: View {
    let title: String
    let subTitle: String
    
    var body: some View {
        
        HStack {
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundStyle(.white)
            
            Spacer()
            
            Text(subTitle)
                .font(.footnote)
                .foregroundStyle(.white.opacity(0.5))
        }
        .padding(.zero)
    }
}

#Preview {
    SectionHeaderView(title: "123", subTitle: "234")
        .background(Color.black)
}
