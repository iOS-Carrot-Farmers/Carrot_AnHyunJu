//
//  RecommendCollectionViewCell.swift
//  Carrot_Market_iOS
//
//  Created by 안현주 on 2021/11/08.
//

import UIKit

class RecommendCollectionViewCell: UICollectionViewCell {

    static let identifier = "RecommendCollectionViewCell"
    
    @IBOutlet weak var recommendImageView: UIImageView!
    @IBOutlet weak var recommendItemLabel: UILabel!
    @IBOutlet weak var recommendPriceLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    func setData(appData:RecommendItemData) {
        recommendImageView.image = appData.makeImage()
        recommendItemLabel.text = appData.recommenditemName
        recommendPriceLabel.text = appData.recommenditemPrice
    }

}
