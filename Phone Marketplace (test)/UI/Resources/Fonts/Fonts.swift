//
//  Fonts.swift
//  Phone Marketplace (test)
//
//  Created by Islomiddin on 09/12/22.
//

import UIKit

extension UIFont {
    
    enum MarkProWeight: String {
        case regular = "MarkPro"
        case medium = "MarkProMedium"
        case heavy = "MarkProHeavy"
        case bold = "MarkProBold"
    }
    
    static func markPro(ofSize size: CGFloat, weight: MarkProWeight) -> UIFont {
        guard let font = UIFont(name: weight.rawValue, size: size) else {
            print("==== system font ====")
            return UIFont.systemFont(ofSize: size)
        }
        
        return font
    }
}
