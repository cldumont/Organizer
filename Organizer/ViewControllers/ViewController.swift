//
//  ViewController.swift
//  Organizer
//
//  Created by Craig Dumont on 2/9/19.
//  Copyright © 2019 Craig Dumont. All rights reserved.
//

import UIKit

class ViewController: UITableViewController {

    let navigationAnimation = NavigationAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.delegate = self
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addItem))
        
        ItemFunctions.readItems(completion: { [weak self] in
            self?.tableView.reloadData()
        })
    }
    
    @objc func addItem() {
        
        let vc = UIStoryboard.init(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "AddItem") as? AddItemViewController
        self.navigationController?.pushViewController(vc!, animated: true)
        
    }
}

// MARK:- TableView Delegates
extension ViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Data.itemModels.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as! ItemTableViewCell
        cell.setup(itemModel: Data.itemModels[indexPath.row])
        
        return cell
    }

}

// MARK:- Navigation Transition Delegate
extension ViewController: UIViewControllerTransitioningDelegate, UINavigationControllerDelegate {
    
    func navigationController(_ navigationController: UINavigationController, animationControllerFor operation: UINavigationController.Operation, from fromVC: UIViewController, to toVC: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        
        return navigationAnimation
    }
}

