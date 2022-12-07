//
//  ItemTableViewCell.swift
//  project_simple_2
//
//  Created by Nam on 01/12/2022.
//

import UIKit
import CoreData

class ItemTableViewCell: UITableViewCell {
    var viewModel = ItemViewModel()
    
    var itemCurrent = ItemData();
    var isActice:Bool = false
    
    
    @IBOutlet weak var itemImageView: UIImageView!
    
    @IBOutlet weak var likeButton: UIButton!
    
    @IBOutlet weak var lableView: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    

    @IBAction func likeButtonPress(_ sender: Any) {
        if isActice{
            isActice = false
            likeButton.setImage(UIImage(named:"ic_unheart"), for: .normal)
        }else{
            isActice = true
            likeButton.setImage(UIImage(named:"heart"), for: .normal)
        }
        viewModel.likeFunc(item: itemCurrent, isLike: isActice)
    }
    
    func configureCell(item : ItemData)  {
        itemCurrent = item
        isActice = item.isLike
        if isActice{
            likeButton.setImage(UIImage(named:"heart"), for: .normal)
        }else{
            likeButton.setImage(UIImage(named:"ic_unheart"), for: .normal)
        }
        
        if let url = URL(string: (item.value(forKey: "urlImage") as? String) ?? ""){
            itemImageView.loadImage123(url: url)
        }
        lableView.text = (item.value(forKey: "title") as? String) ?? ""
        
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
