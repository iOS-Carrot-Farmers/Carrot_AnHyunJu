//
//  ItemContentDataModel.swift
//  Carrot_Market_iOS
//
//  Created by 안현주 on 2021/11/07.
//

import UIKit

struct ItemData {
    let itemIconName: String //item 사진
    let itemName: String //itme 이름
    let info: String //작성자위치, 작성시간
    let price: String //가격
    let like: Int //좋아요 수 
    
    func makeImage() -> UIImage? {
        return UIImage(named: itemIconName)
    }
    
}
