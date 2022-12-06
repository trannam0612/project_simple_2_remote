//
//  ItemTableViewCell.swift
//  project_simple_2
//
//  Created by Nam on 01/12/2022.
//

import UIKit

class ItemTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var itemImageView: UIImageView!
    
    @IBOutlet weak var lableView: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(item : Item)  {
        
        if let url = URL(string: item.image){
            itemImageView.loadImage123(url: url)
            
            
        }
        lableView.text = item.title
        
    }
    
}


extension UIImageView {
    func loadImage123(url: URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
}
