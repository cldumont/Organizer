//
//  Views.swift
//  Organizer
//
//  Created by Craig Dumont on 2/9/19.
//  Copyright © 2019 Craig Dumont. All rights reserved.
//

import UIKit

extension UIView {

    func addShadowAndRoundedCorners() {
        layer.shadowOpacity = 1
        layer.shadowOffset = CGSize.zero
        layer.shadowColor = UIColor.darkGray.cgColor
        layer.cornerRadius = 10
    }
}
