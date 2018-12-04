//
//  DesignableTextField.swift
//  Riot
//
//  Created by vertex on 11/27/18.
//  Copyright © 2018 matrix.org. All rights reserved.
//

import UIKit

@IBDesignable
class DesignableTextField: UITextField {

    @IBInspectable var leftImage: UIImage? {
        didSet {
            updateView()
        }
    }
    
    func updateView() {
        if let image = leftImage {
            leftViewMode = .always
            
            let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
            
            imageView.image = image
            
            let view = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 20))
            view.addSubview(imageView)
            
            leftView = view
        } else {
            //image is nill
            leftViewMode = .never
        }
    }

}
