//
//  CommonViewModel.swift
//  RxFLO
//
//  Created by 박성영 on 2021/01/26.
//

import Foundation
import RxCocoa
import RxSwift


class CommonViewModel: NSObject {
    let title : Driver<String>
    let sceneCoordinator: SceneCoordinatorType
    
    
    init(title : String = "", sceneCoordinator : SceneCoordinatorType) {
        self.title = Observable.just(title).asDriver(onErrorJustReturn: "")
        self.sceneCoordinator = sceneCoordinator
    }
    
}
