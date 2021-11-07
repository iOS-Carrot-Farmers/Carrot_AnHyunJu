//
//  RecommendItemDataModel.swift
//  Carrot_Market_iOS
//
//  Created by 안현주 on 2021/11/08.
//

import UIKit

struct RecommendItemData {
    let recommenditemIconName: String
    let recommenditemName: String
    let recommenditemPrice: String
    
    func makeImage() -> UIImage? {
        return UIImage(named: recommenditemIconName)
    }
}
