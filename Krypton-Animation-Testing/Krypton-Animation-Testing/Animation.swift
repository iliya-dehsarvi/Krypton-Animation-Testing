//
//  Animation.swift
//  Krypton-Animation-Testing
//
//  Created by Iliya dehsarvi on 8/8/21.
//

import UIKit

class Animation: UIView {
	var leftView: UIView = UIView()
	var centerView: UIView = UIView()
	var rightView: UIView = UIView()

	
	override init(frame: CGRect) {
		super.init(frame: frame)
		self.addSubview(leftView)
		self.addSubview(centerView)
		self.addSubview(rightView)
		self.backgroundColor = .black
		
		leftView.frame = CGRect(x: 14, y: 375, width: 130, height: 148)
		centerView.frame = CGRect(x: 135, y: 356, width: 144, height: 186)
		rightView.frame = CGRect(x: 271, y: 375, width: 130, height: 148)

	}
	
	required init(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
}
