//
//  UIViewExtension.swift
//  YDB2WError
//
//  Created by Douglas Hennrich on 09/10/20.
//  Copyright © 2020 YourDev. All rights reserved.
//

import UIKit

extension UIView {

	func loadNib() -> UIView {
		let bundle = Bundle.init(for: type(of: self))
		let nibName = type(of: self).description().components(separatedBy: ".").last!
		let nib = UINib(nibName: nibName, bundle: bundle)
		return nib.instantiate(withOwner: self, options: nil).first as! UIView
	}
}
