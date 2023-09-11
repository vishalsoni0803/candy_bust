//
//  TableViewCell.swift
//  Candy Bust
//
//  Created by vishal swarnkar on 07/09/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    // MARK: - OUTLETS
    
    @IBOutlet weak var detailView: UIView!
    
    @IBOutlet weak var imgView: UIView!
    
    @IBOutlet weak var nextButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

       
    }

   
}
