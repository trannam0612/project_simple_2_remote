//
//  ViewController.swift
//  project_simple_2
//
//  Created by Nam on 30/11/2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var viewModel = ItemViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        viewModel.getAllItem()
    }
    
    
}


extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.itemData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell", for: indexPath) as? ItemTableViewCell else { return UITableViewCell() }
        let item = viewModel.itemData[indexPath.row]
        cell.configureCell(item: item)
        return cell
    }
    
    
}

extension ViewController:  UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "detailViewController")as? DetailViewController{
            
            vc.titleImage = (viewModel.itemData[indexPath.row].value(forKey: "title") as? String) ?? ""
            
            
            vc.descriptionImage = (viewModel.itemData[indexPath.row].value(forKey: "descriptionItem") as? String) ?? ""
            
            vc.imageUrl = (viewModel.itemData[indexPath.row].value(forKey: "urlImage") as? String) ?? ""
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

