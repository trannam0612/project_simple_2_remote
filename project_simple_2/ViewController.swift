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
        viewModel.loadItem()
        
        
        
        
        
    }
    
    
}


extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ItemTableViewCell", for: indexPath) as? ItemTableViewCell else { return UITableViewCell() }
        let item = viewModel.items[indexPath.row]
        cell.configureCell(item: item)
        
        return cell
    }
    
    
}

extension ViewController:  UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "detailViewController")as? DetailViewController{
            
            vc.titleImage = viewModel.items[indexPath.row].title
            vc.descriptionImage = viewModel.items[indexPath.row].description ?? ""
            
            vc.imageUrl = viewModel.items[indexPath.row].image
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
    }
}

