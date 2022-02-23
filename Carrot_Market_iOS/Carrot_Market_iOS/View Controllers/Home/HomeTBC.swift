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
        
        homeVC.tabBarItem = UITabBarItem(title: "홈", image: UIImage(named: "homeIcon"), selectedImage: UIImage(named: "homeIconFill"))
        townVC.tabBarItem = UITabBarItem(title: "동네생활", image: UIImage(named: "townIcon"), selectedImage: UIImage(named: "townIconFill"))
        myaroundVC.tabBarItem = UITabBarItem(title: "내 근처", image: UIImage(named: "myAroundIcon"), selectedImage: UIImage(named: "myAroundIconFill"))
        chatVC.tabBarItem = UITabBarItem(title: "채팅", image: UIImage(named: "chatIcon"), selectedImage: UIImage(named: "chatIconFill"))
        profileVC.tabBarItem = UITabBarItem(title: "나의 당근", image: UIImage(named: "myCarrotIcon"), selectedImage: UIImage(named: "myCarrotIconFill"))
        
        setViewControllers([homeVC, townVC, myaroundVC, chatVC, profileVC], animated: true)
        
    }

}
