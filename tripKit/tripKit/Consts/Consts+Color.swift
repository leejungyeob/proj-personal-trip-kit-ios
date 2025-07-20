//
//  Consts+Color.swift
//  tripKit
//
//  Created by 이중엽 on 7/19/25.
//

import SwiftUI

extension Consts {
    
    enum Colors {
        case bg
        case primaryGray
        
        var color: Color {
            switch self {
            case .bg:
                return Color.init(red: 0.149, green: 0.149, blue: 0.149)
            case .primaryGray:
                return Color.gray.opacity(0.3)
            }
        }
    }
}
