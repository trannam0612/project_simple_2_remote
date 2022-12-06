//
//  DetailViewController.swift
//  project_simple_2
//
//  Created by Nam on 02/12/2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    
    @IBOutlet weak var titleView: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var descriptionView: UILabel!
    var titleImage = ""
    var descriptionImage = ""
    var imageUrl = "";
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        titleView.text = titleImage
        
        descriptionView.text = descriptionImage
        
        if let url = URL(string: imageUrl){
            imageView.loadImage123(url: url)
        }
    }
    
    
    
}
