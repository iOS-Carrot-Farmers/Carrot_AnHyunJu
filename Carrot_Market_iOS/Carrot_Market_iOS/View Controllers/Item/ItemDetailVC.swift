//
//  ItemDetailVC.swift
//  Carrot_Market_iOS
//
//  Created by 안현주 on 2021/11/08.
//

import UIKit

class ItemDetailVC: UIViewController {

    @IBOutlet weak var itemScrollView: UIScrollView!
    
    //item image
    @IBOutlet weak var itemImageView: UIImageView!
    
    //user info view
    @IBOutlet weak var userProfileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var userLocationLabel: UILabel!
    
    //item info view
    @IBOutlet weak var itemNameLabel: UILabel!
    
    //collection view
    @IBOutlet weak var recommendCollectionView: UICollectionView!
    var recommendItemList: [RecommendItemData] = [] // collectionviewcell에 넣을 데이터 배열 선언
    
    //item Data 정보를 받을 변수
    var itemDataList: ItemData?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initRecommendItemList()
        makeDelegate()
        registerXib()
    }
    
    
    func initRecommendItemList() {
        recommendItemList.append(contentsOf: [
            RecommendItemData(recommenditemIconName: "eunjuchoi", recommenditemName: "은주초이", recommenditemPrice: "999,999+원"),
            RecommendItemData(recommenditemIconName: "eunjuchoi", recommenditemName: "은주초이", recommenditemPrice: "999,999+원"),
            RecommendItemData(recommenditemIconName: "eunjuchoi", recommenditemName: "은주초이", recommenditemPrice: "999,999+원"),
            RecommendItemData(recommenditemIconName: "eunjuchoi", recommenditemName: "은주초이", recommenditemPrice: "999,999+원"),
            RecommendItemData(recommenditemIconName: "eunjuchoi", recommenditemName: "은주초이", recommenditemPrice: "999,999+원"),
            RecommendItemData(recommenditemIconName: "eunjuchoi", recommenditemName: "은주초이", recommenditemPrice: "999,999+원"),
            RecommendItemData(recommenditemIconName: "eunjuchoi", recommenditemName: "은주초이", recommenditemPrice: "999,999+원"),
            RecommendItemData(recommenditemIconName: "eunjuchoi", recommenditemName: "은주초이", recommenditemPrice: "999,999+원"),
            RecommendItemData(recommenditemIconName: "eunjuchoi", recommenditemName: "은주초이", recommenditemPrice: "999,999+원"),
            RecommendItemData(recommenditemIconName: "eunjuchoi", recommenditemName: "은주초이", recommenditemPrice: "999,999+원")
        ])
        
    }
    
    func makeDelegate() {
        recommendCollectionView.dataSource = self
        recommendCollectionView.delegate = self
    }

    func registerXib() {
        let xibName = UINib(nibName: RecommendCollectionViewCell.identifier, bundle: nil)
        recommendCollectionView.register(xibName, forCellWithReuseIdentifier: RecommendCollectionViewCell.identifier)
    }

}


extension ItemDetailVC: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        recommendItemList.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RecommendCollectionViewCell.identifier, for: indexPath) as? RecommendCollectionViewCell else {return UICollectionViewCell()}

        cell.setData(appData: recommendItemList[indexPath.row])
        
        return cell
    }
}

extension ItemDetailVC: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: 182, height: 170)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
}
