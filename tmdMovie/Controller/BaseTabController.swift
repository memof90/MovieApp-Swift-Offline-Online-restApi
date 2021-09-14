//
//  BaseTabController.swift
//  tmdMovie
//
//  Created by Memo Figueredo on 13/9/21.
//

import UIKit

class BaseTabController : UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        MARK: - First Controller
         let popularViewController = UIViewController()
        popularViewController.view.backgroundColor = .white
//        popularViewController.tabBarItem.title = "Popular"
        popularViewController.navigationItem.title = "Popular"
        
        let popularNavController = UINavigationController(rootViewController: popularViewController)
        popularNavController.tabBarItem.title = "Popular"
        popularNavController.navigationBar.prefersLargeTitles = true
        popularNavController.tabBarItem.image = UIImage(systemName: "text.badge.star")
        
//        MARK: - second Controller
        let topRatedViewController = UIViewController()
        topRatedViewController.view.backgroundColor = .cyan
        topRatedViewController.navigationItem.title = "Top Rated"
        
        let topRatedNavController = UINavigationController(rootViewController: topRatedViewController)
        topRatedNavController.tabBarItem.title = "Top Rated"
        topRatedNavController.navigationBar.prefersLargeTitles = true
        topRatedNavController.tabBarItem.image = UIImage(systemName: "hand.thumbsup.fill")
        
        
        
        
//        MARK: - trhee Controller
        let upcomingViewController = UIViewController()
        upcomingViewController.view.backgroundColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)
        upcomingViewController.navigationItem.title = "Upcoming"
        
        let upcomingNavController = UINavigationController(rootViewController: upcomingViewController)
        upcomingNavController.tabBarItem.title = "Upcoming"
        upcomingNavController.navigationBar.prefersLargeTitles = true
        upcomingNavController.tabBarItem.image = UIImage(systemName: "bolt.circle")
        
        //        MARK: - search Controller
                let searchViewController = UIViewController()
                searchViewController.view.backgroundColor = #colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1)
                searchViewController.navigationItem.title = "Search"
                
                let  searchNavController = UINavigationController(rootViewController: searchViewController)
        searchNavController.tabBarItem.title = "Search"
        searchNavController.navigationBar.prefersLargeTitles = true
        searchNavController.tabBarItem.image = UIImage(systemName: "magnifyingglass")
        
        viewControllers = [
        createNavController(viewController: PopularViewController(), title: "Popular", imageName: "text.badge.star", tilteLarge: true), topRatedNavController, upcomingNavController, searchNavController
        ]
        
    }
   
    //    MARK: Fuctions to create NavControllers
        fileprivate func createNavController(viewController: UIViewController, title: String, imageName: String, tilteLarge: Bool) -> UIViewController {
            let navController = UINavigationController(rootViewController: viewController)
            navController.navigationBar.prefersLargeTitles = tilteLarge
            viewController.navigationItem.title = title
            viewController.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            navController.tabBarItem.title = title
            navController.tabBarItem.image = UIImage(systemName: imageName)
            
            
            return navController
        }
     
}
