//
//  Colors.swift
//  PetHealthTracker
//
//  Team members: Albert Heinrichs, Patrizia Neubauer
//

import SwiftUI

extension Color {
    static let primaryBackground = Color.init(hex: 0xFFFFFF)
    static let lightText = Color.init(hex: 0xd3d3d3)
    static let darkTest = Color.init(hex: 0x000000)
    static let secondBackground = Color.init(hex: 0x006666)
    static let secondary = Color.init(hex: 0x006666)
    
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
    
    var uiColor: UIColor {
        return .init(self)
    }
}
