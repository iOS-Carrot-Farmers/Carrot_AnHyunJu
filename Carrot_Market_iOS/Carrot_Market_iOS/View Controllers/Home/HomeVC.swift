//
//  HomeVC.swift
//  Carrot_Market_iOS
//
//  Created by 안현주 on 2021/11/07.
//

import UIKit

class HomeVC: UIViewController {
    
    // MARK: - Properties
    @IBOutlet weak var locationBtn: UIButton!
    @IBOutlet weak var searchBtn: UIButton!
    @IBOutlet weak var categoryBtn: UIButton!
    @IBOutlet weak var noticeBtn: UIButton!
    @IBOutlet weak var itemTableView: UITableView!
    
    var itemDataList: [ItemData] = []
    
    
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        initItemList()
        makeDelegate()
        registerXib()
    }
    
    // MARK: - Custom Method
    func initItemList() {
        itemDataList.append(contentsOf: [
            ItemData(itemIconName: "sweetpotato", itemName: "고구마호박 아닌 호박고구마", info: "명일동 ・ 끌올 53초 전", price: "3,000원", like: 2),
            ItemData(itemIconName: "eunjuchoi", itemName: "최.은.주", info: "명일동 ・ 끌올 53초 전", price: "999,999+원", like: 9),
            ItemData(itemIconName: "camera", itemName: "렌즈고장난 카메라", info: "명일동 ・ 끌올 54초 전", price: "300,000원", like: 3),
            ItemData(itemIconName: "mask", itemName: "KF94 마스크", info: "명일동 ・ 끌올 1분 전", price: "1,000원", like: 2),
            ItemData(itemIconName: "shoes", itemName: "나이키 신발", info: "명일동 ・ 끌올 3분 전", price: "60,000원", like: 5),
            ItemData(itemIconName: "starbucks", itemName: "4만원짜리 텀블러", info: "명일동 ・ 끌올 4분 전", price: "30,000", like: 1),
            ItemData(itemIconName: "teddybear", itemName: "전남친이 준 곰돌이", info: "명일동 ・ 끌올 10분 전", price: "무료나눔", like: 3)
        ])
    }
    
    func makeDelegate() {
        itemTableView.dataSource = self
        itemTableView.delegate = self
    }
    
    func registerXib() {
        let xibName = UINib(nibName: ItemTableViewCell.identifier, bundle: nil)
        itemTableView.register(xibName, forCellReuseIdentifier: ItemTableViewCell.identifier)
    }

}


// MARK: - Extension
extension HomeVC: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 144
    }
}

extension HomeVC: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemDataList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ItemTableViewCell.identifier) as? ItemTableViewCell else {return UITableViewCell()}
        
        cell.setData(like: indexPath.row, appData: itemDataList[indexPath.row])
        return cell
    }
}
