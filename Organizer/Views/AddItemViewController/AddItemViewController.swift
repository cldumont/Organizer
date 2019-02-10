//
//  AddItemViewController.swift
//  Organizer
//
//  Created by Craig Dumont on 2/9/19.
//  Copyright © 2019 Craig Dumont. All rights reserved.
//

import UIKit

class AddItemViewController: UIViewController {

    @IBOutlet var addItemView: UIView!
    @IBOutlet var addItemLabel: UILabel!
    @IBOutlet var addItemTextField: UITextField!
    @IBOutlet var cancelButton: UIButton!
    @IBOutlet var saveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view?.backgroundColor = UIColor(white: 1, alpha: 0.75)
        
        addItemView.addShadowAndRoundedCorners()
      
    }
    
    @IBAction func cancelItem(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func saveItem(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
}
