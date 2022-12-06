//
//  CustomTextField.swift
//  project_simple_2
//
//  Created by Nam on 30/11/2022.
//

import UIKit

class CustomTextField: UITextField {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.backgroundColor = UIColor(red: 249/255, green: 250/255, blue: 250/255, alpha: 1).cgColor
        
        layer.cornerRadius = 15
        
        
    }

}
