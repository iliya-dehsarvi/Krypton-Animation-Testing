//
//  ViewController.swift
//  Krypton-Animation-Testing
//
//  Created by Iliya dehsarvi on 8/6/21.
//

import UIKit

class ViewController: UIViewController {
	@IBOutlet weak var sampleUIView: UIImageView!
	
	@IBOutlet weak var leftBlueView: UIView!
	@IBOutlet weak var centerBlueView: UIView!
	@IBOutlet weak var rightBlueView: UIView!
	
	@IBOutlet weak var leftWhiteView: UIView!
	@IBOutlet weak var centerWhiteView: UIView!
	@IBOutlet weak var rightWhiteView: UIView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		sampleUIView.isHidden = true
		leftBlueView.layer.cornerRadius = 10
		leftBlueView.layer.masksToBounds = true
		centerBlueView.layer.cornerRadius = 10
		centerBlueView.layer.masksToBounds = true
		rightBlueView.layer.cornerRadius = 10
		rightBlueView.layer.masksToBounds = true
		leftWhiteView.layer.cornerRadius = 10
		leftWhiteView.layer.masksToBounds = true
		centerWhiteView.layer.cornerRadius = 10
		centerWhiteView.layer.masksToBounds = true
		rightWhiteView.layer.cornerRadius = 10
		rightWhiteView.layer.masksToBounds = true
	}
	
	@IBAction func rightButton(_ sender: Any) {
		animate(direction: "toLeft")
	}
	
	@IBAction func leftButton(_ sender: Any) {
		animate(direction: "toRight")
	}
	
	func animate(direction: String) {
		let options: UIView.AnimationOptions = [.curveEaseInOut, .repeat, .autoreverse]
		
		if direction == "toRight" {
			UIView.animate(withDuration: 0.5,
				delay: 0,
				options: .curveEaseOut,
				animations: { [weak self] in
					self?.leftBlueView.frame.origin.x = 135
					self?.leftBlueView.frame.origin.y = 356
					self?.leftBlueView.frame.size.height = 186
					self?.leftBlueView.frame.size.width = 144

					self?.centerBlueView.frame.origin.x = 271
					self?.centerBlueView.frame.origin.y = 375
					self?.centerBlueView.frame.size.height = 148
					self?.centerBlueView.frame.size.width = 130
				
					self?.rightBlueView.frame.origin.x = 14
					self?.rightBlueView.frame.origin.y = 375
					self?.rightBlueView.frame.size.height = 148
					self?.rightBlueView.frame.size.width = 130
				
				
					self?.leftWhiteView.frame.origin.x = 8
					self?.leftWhiteView.frame.origin.y = 8
					self?.leftWhiteView.frame.size.height = 170
					self?.leftWhiteView.frame.size.width = 128

					self?.centerWhiteView.frame.origin.x = 2
					self?.centerWhiteView.frame.origin.y = 2
					self?.centerWhiteView.frame.size.height = 144
					self?.centerWhiteView.frame.size.width = 126
				
					self?.rightWhiteView.frame.origin.x = 2
					self?.rightWhiteView.frame.origin.y = 2
					self?.rightWhiteView.frame.size.height = 144
					self?.rightWhiteView.frame.size.width = 128
				
					self?.view.bringSubviewToFront((self?.leftBlueView)!)

				
			})
		} else {
			UIView.animate(withDuration: 0.5,
				delay: 0,
				options: .curveEaseOut,
				animations: { [weak self] in
					self?.rightBlueView.frame.origin.x = 135
					self?.rightBlueView.frame.origin.y = 356
					self?.rightBlueView.frame.size.height = 186
					self?.rightBlueView.frame.size.width = 144

					self?.leftBlueView.frame.origin.x = 271
					self?.leftBlueView.frame.origin.y = 375
					self?.leftBlueView.frame.size.height = 148
					self?.leftBlueView.frame.size.width = 130
				
					self?.centerBlueView.frame.origin.x = 14
					self?.centerBlueView.frame.origin.y = 375
					self?.centerBlueView.frame.size.height = 148
					self?.centerBlueView.frame.size.width = 130
				
				
					self?.rightWhiteView.frame.origin.x = 8
					self?.rightWhiteView.frame.origin.y = 8
					self?.rightWhiteView.frame.size.height = 170
					self?.rightWhiteView.frame.size.width = 128

					self?.centerWhiteView.frame.origin.x = 2
					self?.centerWhiteView.frame.origin.y = 2
					self?.centerWhiteView.frame.size.height = 144
					self?.centerWhiteView.frame.size.width = 128
				
					self?.leftWhiteView.frame.origin.x = 2
					self?.leftWhiteView.frame.origin.y = 2
					self?.leftWhiteView.frame.size.height = 144
					self?.leftWhiteView.frame.size.width = 126
				
					self?.view.bringSubviewToFront((self?.rightBlueView)!)
			})
		}
		
	}
	@IBAction func reset(_ sender: Any) {
		UIView.animate(withDuration: 0.5,
			delay: 0,
			options: .curveEaseOut,
			animations: { [weak self] in
				self?.centerBlueView.frame.origin.x = 135
				self?.centerBlueView.frame.origin.y = 356
				self?.centerBlueView.frame.size.height = 186
				self?.centerBlueView.frame.size.width = 144

				self?.rightBlueView.frame.origin.x = 271
				self?.rightBlueView.frame.origin.y = 375
				self?.rightBlueView.frame.size.height = 148
				self?.rightBlueView.frame.size.width = 130
			
				self?.leftBlueView.frame.origin.x = 14
				self?.leftBlueView.frame.origin.y = 375
				self?.leftBlueView.frame.size.height = 148
				self?.leftBlueView.frame.size.width = 130
			
			
				self?.centerWhiteView.frame.origin.x = 8
				self?.centerWhiteView.frame.origin.y = 8
				self?.centerWhiteView.frame.size.height = 170
				self?.centerWhiteView.frame.size.width = 128

				self?.leftWhiteView.frame.origin.x = 2
				self?.leftWhiteView.frame.origin.y = 2
				self?.leftWhiteView.frame.size.height = 144
				self?.leftWhiteView.frame.size.width = 128
			
				self?.rightWhiteView.frame.origin.x = 2
				self?.rightWhiteView.frame.origin.y = 2
				self?.rightWhiteView.frame.size.height = 144
				self?.rightWhiteView.frame.size.width = 126
			
				self?.view.bringSubviewToFront((self?.centerBlueView)!)
		})
	}
}

