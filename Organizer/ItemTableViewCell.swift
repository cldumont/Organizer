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
    }
    
    func setup(itemModel: ItemModel) {
        itemLabel.text = itemModel.title
    }


}
