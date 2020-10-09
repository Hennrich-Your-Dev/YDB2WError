//
//  UILabelExtension.swift
//  YDB2WError
//
//  Created by Douglas Hennrich on 08/10/20.
//  Copyright © 2020 YourDev. All rights reserved.
//

import UIKit

extension UILabel {

	func addCharacterSpacing(spacing: Double = -0.2) {
    if let labelText = text, labelText.count > 0 {
      let attributedString = NSMutableAttributedString(string: labelText)

			attributedString.addAttribute(
				NSAttributedString.Key.kern,
				value: spacing,
				range: NSRange(location: 0, length: attributedString.length - 1)
			)

      attributedText = attributedString
    }
  }
}
