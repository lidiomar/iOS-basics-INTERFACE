//
//  SceneDelegate.swift
//  PageViewControllerExample
//
//  Created by Lidiomar Fernando dos Santos Machado on 06/12/20.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate, UIPageViewControllerDataSource {
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let index = (viewController as! Pep).boy
        let beforeIndex = self.pep.firstIndex(of: index)! - 1
        if beforeIndex < 0 {
            return nil
        } else {
            return Pep(pepBoy: self.pep[beforeIndex])
        }
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let index = (viewController as! Pep).boy
        let afterIndex = self.pep.firstIndex(of: index)! + 1
        if afterIndex > self.pep.count - 1 {
            return nil
        } else {
            return Pep(pepBoy: self.pep[afterIndex])
        }
    }
    
    var window: UIWindow?
    let pep = ["Manny", "Moe", "Jack"]

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        if let uiWindowScene = (scene as? UIWindowScene) {
            let pageViewController = UIPageViewController(transitionStyle: .pageCurl, navigationOrientation: .horizontal)
            let pep = Pep(pepBoy: self.pep[0])
            pageViewController.setViewControllers([pep], direction: .forward, animated: false)
            pageViewController.dataSource = self
            window = UIWindow(windowScene: uiWindowScene)
            window?.rootViewController = pageViewController
            window?.backgroundColor = .cyan
            window?.makeKeyAndVisible()
        }
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

