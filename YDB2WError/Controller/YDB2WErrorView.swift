//
//  YDB2WErrorView.swift
//  YDB2WError
//
//  Created by Douglas Hennrich on 08/10/20.
//  Copyright © 2020 YourDev. All rights reserved.
//

import UIKit

class YDB2WErrorView: UIView {

	// MARK: Properties
	weak var delegate: YDB2WErrorDelegate?

	// MARK: IBOutlets
	@IBOutlet var titleLabel: UILabel! {
		didSet {
			titleLabel.addCharacterSpacing()
		}
	}

	@IBOutlet var descriptionLabel: UILabel! {
		didSet {
			descriptionLabel.addCharacterSpacing()
		}
	}

	@IBOutlet var actionButton: UIButton! {
		didSet {
			actionButton.layer.borderColor = UIColor(red: 252/255, green: 13/255, blue: 27/255, alpha: 1).cgColor
			actionButton.layer.borderWidth = 1
			actionButton.layer.cornerRadius = 4
		}
	}

	// MARK: IBActions
	@IBAction func onAction(_ sender: UIButton) {
		delegate?.onAction()
	}
}
