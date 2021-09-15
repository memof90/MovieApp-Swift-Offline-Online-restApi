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
        
        viewControllers = [
//        createNavController(viewController: PopularViewController(), title: "Popular", imageName: "text.badge.star", tilteLarge: true),
//        createNavController(viewController: TopRatedViewController(), title: "Top Rated", imageName: "hand.thumbsup.fill", tilteLarge: true),
//        createNavController(viewController: UpcomingViewController(), title: "Upcoming", imageName: "bolt.circle", tilteLarge: true),
        createNavController(viewController: SearchViewController(), title: "Search", imageName: "magnifyingglass", tilteLarge: true)
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
