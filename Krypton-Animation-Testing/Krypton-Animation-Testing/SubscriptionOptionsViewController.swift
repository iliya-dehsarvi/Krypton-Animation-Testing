//
//  SubscriptionOptionsViewController.swift
//  Krypton-Animation-Testing
//
//  Created by Iliya dehsarvi on 8/8/21.
//

import UIKit

class SubscriptionOptionsViewController: UIViewController {
	
	let safeArea = UIView(frame: CGRect(x: 0.0, y: 334, width: 414, height: 228))
	let leftBackgroundView = UIView(frame: CGRect(x: 14, y: 40, width: 130, height: 148))
	let centerBakcgroundView = UIView(frame: CGRect(x: 135, y: 21, width: 144, height: 186))
	let rightBackgroundView = UIView(frame: CGRect(x: 271, y: 40, width: 130, height: 148))
	let leftWhiteView = UIView(frame: CGRect(x: 2, y: 2, width: 128, height: 144))
	let centerWhiteView = UIView(frame: CGRect(x: 8, y: 8, width: 128, height: 170))
	let rightWhiteView = UIView(frame: CGRect(x: 2, y: 2, width: 126, height: 144))
	
	let leftButton = UIButton(frame: CGRect(x: 39, y: 54, width: 50, height: 36))
	let centerButton = UIButton(frame: CGRect(x: 39, y: 68, width: 50, height: 35))
	let rightButton = UIButton(frame: CGRect(x: 38, y: 54, width: 50, height: 36))

	var leftBackgroundViewFrame = CGRect()
	var centerBakcgroundViewFrame = CGRect()
	var rightBackgroundViewFrame = CGRect()
	var leftWhiteViewFrame = CGRect()
	var centerWhiteViewFrame = CGRect()
	var rightWhiteViewFrame = CGRect()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		leftBackgroundViewFrame = leftBackgroundView.frame
		centerBakcgroundViewFrame = centerBakcgroundView.frame
		rightBackgroundViewFrame = rightBackgroundView.frame
		leftWhiteViewFrame = leftWhiteView.frame
		centerWhiteViewFrame = centerWhiteView.frame
		rightWhiteViewFrame = rightWhiteView.frame
		
		leftButton.setTitle(">", for: .normal)
		centerButton.setTitle("|", for: .normal)
		rightButton.setTitle("<", for: .normal)
		
		leftButton.setTitleColor(.systemBlue, for: .normal)
		centerButton.setTitleColor(.systemBlue, for: .normal)
		rightButton.setTitleColor(.systemBlue, for: .normal)

		leftButton.addTarget(self, action: #selector(moveRight), for: .touchUpInside)
		centerButton.addTarget(self, action: #selector(moveCenter), for: .touchUpInside)
		rightButton.addTarget(self, action: #selector(moveLeft), for: .touchUpInside)

		
		leftBackgroundView.backgroundColor = UIColor.systemBlue
		centerBakcgroundView.backgroundColor = UIColor.systemBlue
		rightBackgroundView.backgroundColor = UIColor.systemBlue
		leftWhiteView.backgroundColor = UIColor.white
		centerWhiteView.backgroundColor = UIColor.white
		rightWhiteView.backgroundColor = UIColor.white
		
		leftBackgroundView.roundCorners()
		centerBakcgroundView.roundCorners()
		rightBackgroundView.roundCorners()
		leftWhiteView.roundCorners()
		centerWhiteView.roundCorners()
		rightWhiteView.roundCorners()

		leftBackgroundView.addSubview(leftWhiteView)
		centerBakcgroundView.addSubview(centerWhiteView)
		rightBackgroundView.addSubview(rightWhiteView)

		leftBackgroundView.addSubview(leftButton)
		centerBakcgroundView.addSubview(centerButton)
		rightBackgroundView.addSubview(rightButton)

		safeArea.addSubview(leftBackgroundView)
		safeArea.addSubview(centerBakcgroundView)
		safeArea.addSubview(rightBackgroundView)
		safeArea.bringSubviewToFront(centerBakcgroundView)
		view.addSubview(safeArea)
		
//		moveLeft()
	}
	
	@objc func moveRight() {
		var tempFrameBackground = CGRect()
		var tempFrameWhite = CGRect()
		
		UIView.animate(withDuration: 0.5,
			delay: 0,
			options: .curveEaseOut,
			animations: { [weak self] in
			tempFrameBackground = (self?.leftBackgroundView.frame)!
			self?.leftBackgroundView.frame = (self?.centerBakcgroundView.frame)!
			self?.centerBakcgroundView.frame = (self?.rightBackgroundView.frame)!
			self?.rightBackgroundView.frame = tempFrameBackground
			
			tempFrameWhite = (self?.leftWhiteView.frame)!
			self?.leftWhiteView.frame = (self?.centerWhiteView.frame)!
			self?.centerWhiteView.frame = (self?.rightWhiteView.frame)!
			self?.rightWhiteView.frame = tempFrameWhite
			
			self?.safeArea.bringSubviewToFront(self!.leftBackgroundView)
		})
	}
	
	@objc func moveLeft() {
		var tempFrameBackground = CGRect()
		var tempFrameWhite = CGRect()
		
		UIView.animate(withDuration: 0.5,
			delay: 0,
			options: .curveEaseOut,
			animations: { [weak self] in
			tempFrameBackground = (self?.rightBackgroundView.frame)!
			self?.rightBackgroundView.frame = (self?.centerBakcgroundView.frame)!
			self?.centerBakcgroundView.frame = (self?.leftBackgroundView.frame)!
			self?.leftBackgroundView.frame = tempFrameBackground
			
			tempFrameWhite = (self?.rightWhiteView.frame)!
			self?.rightWhiteView.frame = (self?.centerWhiteView.frame)!
			self?.centerWhiteView.frame = (self?.leftWhiteView.frame)!
			self?.leftWhiteView.frame = tempFrameWhite
			
			self?.safeArea.bringSubviewToFront(self!.rightBackgroundView)
		})
	}
	
	@objc func moveCenter() {
		leftBackgroundView.frame = leftBackgroundViewFrame
		centerBakcgroundView.frame = centerBakcgroundViewFrame
		rightBackgroundView.frame = rightBackgroundViewFrame
		leftWhiteView.frame = leftWhiteViewFrame
		centerWhiteView.frame = centerWhiteViewFrame
		rightWhiteView.frame = rightWhiteViewFrame
		
		safeArea.bringSubviewToFront(centerBakcgroundView)

		
		UIView.animate(withDuration: 0.5,
			delay: 0,
			options: .curveEaseOut,
			animations: { [weak self] in
			
			self?.leftBackgroundView.frame = self!.leftBackgroundViewFrame
			self?.centerBakcgroundView.frame = self!.centerBakcgroundViewFrame
			self?.rightBackgroundView.frame = self!.rightBackgroundViewFrame
			self?.leftWhiteView.frame = self!.leftWhiteViewFrame
			self?.centerWhiteView.frame = self!.centerWhiteViewFrame
			self?.rightWhiteView.frame = self!.rightWhiteViewFrame
			
			self?.safeArea.bringSubviewToFront(self!.centerBakcgroundView)
		})
	}

}

extension UIView {
	func roundCorners() {
		self.layer.cornerRadius = 5
		self.layer.masksToBounds = true
	}
}
