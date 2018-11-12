//
//  ListCell.swift
//  MVVMTest
//
//  Created by Shamkhal Guliyev on 11/8/18.
//  Copyright © 2018 Shamkhal Guliyev. All rights reserved.
//

import UIKit

class ListCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var imgStatus: UIImageView!
    
    var listViewModel: ListViewModel! {
        didSet {
            lblTitle.text = listViewModel.titleName
            imgStatus.image = listViewModel.image
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
