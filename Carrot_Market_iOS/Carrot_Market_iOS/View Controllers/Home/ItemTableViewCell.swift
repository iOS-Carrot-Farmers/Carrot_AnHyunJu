//
//  ItemTableViewCell.swift
//  Carrot_Market_iOS
//
//  Created by 안현주 on 2021/11/07.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    // MARK: - Properties
    static let identifier = "ItemTableViewCell"
    
    @IBOutlet weak var itemImageView: UIImageView!
    @IBOutlet weak var itemLabel: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    @IBOutlet weak var likeImageView: UIImageView!
    @IBOutlet weak var countLikeLabel: UILabel!
    
    
    // MARK: - Life Cycle
    override func awakeFromNib() {
        super.awakeFromNib()
        setUI()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    
    // MARK: - Custom Method
    func setData(like: Int, appData: ItemData) {
        itemImageView.image = appData.makeImage()
        itemLabel.text = appData.itemName
        infoLabel.text = appData.info
        priceLabel.text = appData.price
        countLikeLabel.text = "\(like)"
    }
    
    func setUI() {
        itemImageView.layer.cornerRadius = 5
    }
}


