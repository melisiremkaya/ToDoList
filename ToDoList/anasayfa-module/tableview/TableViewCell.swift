//
//  TableViewCell.swift
//  ToDoList
//
//  Created by Azra Kaya on 15.05.2022.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var yapilacaklarBilgiLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
