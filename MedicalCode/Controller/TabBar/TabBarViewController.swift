//
//  TabBarViewController.swift
//  MedicalCode
//
//  Created by Ibrahim El-geddawy on 12/20/18.
//  Copyright © 2018 Ibrahim El-geddawy. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setViewControllers()
        self.tabBar.barTintColor = UIColor.mainColor
        self.tabBar.tintColor = UIColor.secondaryColor
//        self.tabBar.unselectedItemTintColor = UIColor(red: 253/255, green: 255/255, blue: 252/255, alpha: 1)
        self.tabBar.unselectedItemTintColor = UIColor.white
        self.selectedIndex = 2
        
       
        
        

        // Do any additional setup after loading the view.
    }
    let searchNavigation = UINavigationController()
    let myFavoritesNavigation = UINavigationController()
    let myAppointmentsNavigation = UINavigationController()
    
    func setViewControllers(){
        searchTabBar()
        secondTabBat()
        myAppointmentsTabBar()
        let arrayBar = [myAppointmentsNavigation,myFavoritesNavigation, searchNavigation ]
        self.viewControllers = arrayBar
        
        
    }
    
    func searchTabBar(){
        let search = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "SearchforDoctorVC") as! SearchforDoctorVC
        
        search.tabBarItem = UITabBarItem(title: "بحث", image: #imageLiteral(resourceName: "icBottomMenuSearch"), tag: 0)
        searchNavigation.viewControllers = [search]
        
    }
    func secondTabBat(){
        let myFavoritesVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MyFavoritesVC") as! MyFavoritesVC
        myFavoritesVC.tabBarItem = UITabBarItem(title: "المفضلة", image: #imageLiteral(resourceName: "icBottomMenuMyFavorites") , tag: 1)
        myFavoritesNavigation.viewControllers = [myFavoritesVC]
    }
    func myAppointmentsTabBar(){
        let myAppointmentsVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MyAppointmentsVC") as! MyAppointmentsVC
        myAppointmentsVC.tabBarItem = UITabBarItem(title: "مواعيدي", image: #imageLiteral(resourceName: "icBottomMenuAppointments"), tag: 2)
        myAppointmentsNavigation.viewControllers = [myAppointmentsVC]
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
