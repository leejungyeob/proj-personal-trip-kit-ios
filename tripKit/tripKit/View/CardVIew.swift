//
//  CardVIew.swift
//  tripKit
//
//  Created by 이중엽 on 8/15/25.
//

import SwiftUI

struct CardVIew: View {
    let horizontalPadding: CGFloat = 20
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            HStack {
                Text("Your Balance")
                    .rowTitleStyle()
                
                Spacer()
                
                let date = getDate()
                Text(date)
                    .rowTitleStyle()
            }
            
            Text("$1,000,000")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundStyle(Color.white)
            
            Spacer()
            
            Text("Premium Card")
                .font(.footnote)
                .foregroundStyle(Color.white)
                .fontWeight(.medium)
        }
        .frame(height: 120)
        .padding(.horizontal, 20)
        .padding(.vertical, 20)
        .background(RadialGradient(colors: [.green, .cyan], center: .topLeading, startRadius: 0, endRadius: 600)
        )
        .cornerRadius(20)
        .padding(.horizontal, horizontalPadding)
    }
    
    func getDate() -> String {
        let DateFormatter = DateFormatter()
        DateFormatter.dateFormat = "MM/yy"
        return DateFormatter.string(from: Date())
    }
}

#Preview {
    CardVIew()
}
