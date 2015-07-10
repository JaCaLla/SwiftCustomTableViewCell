//
//  CustomTVC.swift
//  CustomTableViewCell
//
//  Created by JAVIER CALATRAVA LLAVERIA on 10/7/15.
//  Copyright © 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

import UIKit

public class CustomTVC: UITableViewCell {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var img: UIImageView!
    
    
    
    public func configure(text text: String, image: String) {
        label?.text = text
        img?.image = UIImage(named: image)
    }

}
