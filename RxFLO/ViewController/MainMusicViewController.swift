//
//  MainMusicViewController.swift
//  RxFLO
//
//  Created by 박성영 on 2021/01/26.
//

import UIKit
import RxSwift
import RxCocoa
import NSObject_Rx

class MainMusicViewController: UIViewController, ViewModelBindableType {

    var viewModel: MainMusicViewModel!
    
    @IBOutlet weak var albumLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var singerLabel: UILabel!
    @IBOutlet weak var albumImage: UIImageView!
    @IBOutlet weak var lyricsTableView: UIStackView!
    @IBOutlet weak var progressBar: UISlider!
    @IBOutlet weak var currentTimeLabel: UIView!
    @IBOutlet weak var finishTimeLabel: UIView!
    @IBOutlet weak var controlBTN: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func bindViewModel() {
        viewModel.title   //뷰모델에 타이틀이 네비게이션에 추가
            .drive(navigationItem.rx.title)
            .disposed(by: rx.disposeBag)
    }
    


}
