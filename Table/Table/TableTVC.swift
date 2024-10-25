//
//  TableTVC.swift
//  Table
//
//  Created by Джан Влад on 25.10.2024.
//

import UIKit

class TableTVC: UITableViewCell {

    @IBOutlet weak var gameView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    @IBOutlet weak var DescribtionLBL: UILabel!
    @IBOutlet weak var nameLBL: UILabel!
    @IBOutlet weak var gameImgView: UIImageView!
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
