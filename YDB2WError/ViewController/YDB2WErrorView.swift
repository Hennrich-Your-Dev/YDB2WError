//
//  YDB2WErrorView.swift
//  YDB2WError
//
//  Created by Douglas Hennrich on 08/10/20.
//  Copyright © 2020 YourDev. All rights reserved.
//

import UIKit

public class YDB2WErrorView: UIView {

	// MARK: Properties
	public weak var delegate: YDB2WErrorDelegate?

	// MARK: Init
	public required init?(coder: NSCoder) {
		super.init(coder: coder)
		instanceFromNib()
	}

	private func instanceFromNib() {
		contentView = loadNib()
		addSubview(contentView)

		contentView.translatesAutoresizingMaskIntoConstraints = false

		let top = contentView.topAnchor.constraint(equalTo: self.topAnchor)
		let bottom = contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor)
		let leading = contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor)
		let trailing = contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor)

		NSLayoutConstraint.activate([top, bottom, leading, trailing])
	}

	// MARK: IBOutlets
	@IBOutlet var contentView: UIView!

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
