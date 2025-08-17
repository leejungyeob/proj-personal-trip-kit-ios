//
//  RowStyleModifier.swift
//  tripKit
//
//  Created by 이중엽 on 8/15/25.
//

import SwiftUI

private struct RowTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.footnote)
            .foregroundStyle(Color.white)
            .fontWeight(.medium)
    }
}


extension View {
    public func rowTitleStyle() -> some View {
        modifier(RowTitle())
    }
}
