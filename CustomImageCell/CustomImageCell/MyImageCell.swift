//
//  MyImageCell.swift
//  CustomImageCell
//
//  Created by Aaron Levy on 4/2/21.
//

import UIKit

class MyImageCell: UITableViewCell {

    @IBOutlet weak var myImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
