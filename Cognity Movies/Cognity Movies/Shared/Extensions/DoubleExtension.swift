//
//  DoubleExtension.swift
//  Cognity Movies
//
//  Created by Panagiotis Theodosiadis on 5/2/23.
//

import Foundation
import UIKit

extension Double {
    func getColoredRatting() -> NSMutableAttributedString {
        let rattingText = NSMutableAttributedString(string: "\(self)", attributes: [NSAttributedString.Key.font : UIFont.systemFont(ofSize: 12)])
        if self < 5.0 {
            rattingText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.red, range: NSRange(location: 0, length: rattingText.length))
        } else if self < 8.0 {
            rattingText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.yellow, range: NSRange(location: 0, length: rattingText.length))
        } else {
            rattingText.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor.green, range: NSRange(location: 0, length: rattingText.length))
        }
        return rattingText
    }
}
