//
//  Logic.swift
//  MCChin
//
//  Created by Artemis Papunidis on 10/2/20.
//  Copyright © 2020 PAPUNIDIS DEVELOPMENT. All rights reserved.
//

import Foundation
import UIKit

// ЧТОБЫ УБИРАЛАСЬ КЛАВИАТУРА ПО НАЖАТИЮ
extension UIViewController {
func hideKeyboardWhenTappedAround() {
    let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
    tap.cancelsTouchesInView = false
    view.addGestureRecognizer(tap)
}

@objc func dismissKeyboard() {
    view.endEditing(true)
}

}
