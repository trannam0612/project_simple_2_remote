//
//  CustomButton.swift
//  project_simple_2
//
//  Created by Nam on 30/11/2022.
//

import UIKit

class CustomButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.backgroundColor = UIColor(red: 111/255, green: 160/255, blue: 250/255, alpha: 1).cgColor
        
        layer.cornerRadius = 15
        
        
    }

}
