//
//  FlexTabView.swift
//  FBSnapshotTestCase
//
//  Created by Andrew Hardin on 7/21/24.
//

import Foundation

extension UITabBarController {
    // MARK: - Generate View Controller with image from resource
    public func generateViewControllerWithImage<T> (viewController: T,titleName: String,imageName: String) -> T where T: UIViewController {
        let service = FlexTabService.shared
        viewController.tabBarItem.title = titleName
        viewController.tabBarItem.image = service.loadImage(image: imageName)
        return viewController
    }
    
    // MARK: -  Generate View Controller with image from SFSymbols
    public func generateViewControllerWithSystemImage <T> (viewController: T, titleName: String, imageName: String) -> T where T: UIViewController {
        let service = FlexTabService.shared
        viewController.tabBarItem.title = titleName
        viewController.tabBarItem.image = service.loadSystemImage(image: imageName)
        return viewController
    }
}
