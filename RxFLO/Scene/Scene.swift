//
//  Scene.swift
//  RxFLO
//
//  Created by 박성영 on 2021/01/26.
//

import UIKit

enum Scene {
    case mainMusic(MainMusicViewModel)
    
    /*
    case list(MemoListViewModel)
    case detail(MemoDetailViewModel)
    case compose(MemoComposeViewModel)
 */
}

extension Scene {
    func instantiate(fro storyboard: String = "Main") -> UIViewController{
        let storyboard = UIStoryboard(name: storyboard, bundle: nil)
        
        switch  self {
        case .mainMusic(let viewModel):
            guard let nav = storyboard.instantiateViewController(withIdentifier: "MainNav") as? UINavigationController
            else{
                fatalError()
            }
            
            guard var mainMusicVC = nav.viewControllers.first as?
                    MainMusicViewController
            else {
                fatalError()
            }
            
            mainMusicVC.bind(viewModel: viewModel)
            return nav
            
       /*
        case .detail(let viewModel):
            guard var detailVC = storyboard.instantiateViewController(withIdentifier: "DetailVc") as? MemoDetailViewController
            else{
                fatalError()
            }
            
            detailVC.bind(viewModel: viewModel)
            return detailVC
            
        case .compose(let viewModel):
            guard let nav = storyboard.instantiateViewController(withIdentifier: "ComposeNav") as? UINavigationController
            else{
                fatalError()
            }
            
            guard var composeVC = nav.viewControllers.first as? MemoComposeViewController
            else{
                fatalError()
            }
            
            composeVC.bind(viewModel: viewModel)
            return nav
            */
        }
    }
}

