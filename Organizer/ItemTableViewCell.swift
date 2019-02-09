//
//  ItemTableViewCell.swift
//  Organizer
//
//  Created by Craig Dumont on 2/9/19.
//  Copyright © 2019 Craig Dumont. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet var itemView: UIView!
    @IBOutlet var itemLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        itemView.layer.shadowOpacity = 1
        itemView.layer.shadowOffset = CGSize.zero
        itemView.layer.shadowColor = UIColor.darkGray.cgColor
        itemView.layer.cornerRadius = 10
        
    }
    
    func setup(itemModel: ItemModel) {
        itemLabel.text = itemModel.title
    }


}
