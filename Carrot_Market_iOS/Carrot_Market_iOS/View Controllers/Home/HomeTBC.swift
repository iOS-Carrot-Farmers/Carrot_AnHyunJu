//
//  HomeTBC.swift
//  Carrot_Market_iOS
//
//  Created by 안현주 on 2021/11/07.
//

import UIKit

class HomeTBC: UITabBarController {

    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setTabBar()
    }
    
    // MARK: - Custom Method
    func setTabBar() {
        guard let homeVC = self.storyboard?.instantiateViewController(identifier: "HomeVC"),
              let townVC = self.storyboard?.instantiateViewController(identifier: "TownVC"),
              let myaroundVC = self.storyboard?.instantiateViewController(identifier: "MyAroundVC"),
              let chatVC = self.storyboard?.instantiateViewController(identifier: "ChatVC"),
              let profileVC = self.storyboard?.instantiateViewController(identifier: "ProfileVC")
            else { return }
        
        homeVC.tabBarItem.title = "홈"
        homeVC.tabBarItem.image = UIImage(named: "homeIcon")
        homeVC.tabBarItem.selectedImage = UIImage(named: "homeIconFill")
        
        townVC.tabBarItem.title = "동네생활"
        townVC.tabBarItem.image = UIImage(named: "townIcon")
        townVC.tabBarItem.selectedImage = UIImage(named: "townIconFill")
        
        myaroundVC.tabBarItem.title = "내 근처"
        myaroundVC.tabBarItem.image = UIImage(named: "myAroundIcon")
        myaroundVC.tabBarItem.selectedImage = UIImage(named: "myAroundIconFill")
        
        chatVC.tabBarItem.title = "채팅"
        chatVC.tabBarItem.image = UIImage(named: "chatIcon")
        chatVC.tabBarItem.selectedImage = UIImage(named: "chatIconFill")
        
        profileVC.tabBarItem.title = "나의 당근"
        profileVC.tabBarItem.image = UIImage(named: "myCarrotIcon")
        profileVC.tabBarItem.selectedImage = UIImage(named: "myCarrotIconFill")
        
        setViewControllers([homeVC, townVC, myaroundVC, chatVC, profileVC], animated: true)
        
    }

}
