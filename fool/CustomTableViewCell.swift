//
//  CustomTableViewCell.swift
//  fool
//
//  Created by Jerry Jiang on 14/10/23.
//  Copyright (c) 2014年 Jerry Jiang. All rights reserved.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var shortImage: UIImageView!
    @IBOutlet var name: UILabel!
    @IBOutlet var price: UILabel!
    @IBOutlet var location: UILabel!
    @IBOutlet var distance: UILabel!
    @IBOutlet var date: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    required init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    func loadItem(product : Product) {
        self.shortImage.image = UIImage(named: product.shortImage)
        self.name.text = product.name
        
        self.price.text = product.price
        self.location.text = product.location
        self.distance.text = product.distance
        self.date.text = product.date
    }

}
