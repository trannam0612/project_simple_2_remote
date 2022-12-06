//
//  DetailViewController.swift
//  project_simple_2
//
//  Created by Nam on 02/12/2022.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func btnOnTapped(_ sender: Any) {
        
        let storyBoard = self.storyboard?.instantiateViewController(withIdentifier: "detailViewController2") as! DetailViewController2
                
            self.navigationController?.pushViewController(storyBoard, animated: true)
    }
    
}
