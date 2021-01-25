//
//  MainMusicViewModel.swift
//  RxFLO
//
//  Created by 박성영 on 2021/01/26.
//

import Foundation
import RxCocoa
import RxSwift
import Action


class MainMusicViewModel : CommonViewModel{
    
    private var musicInfo : Music?
    
    func setting(_ path : String){
        guard  let url = URL(string: path) else {
            print("url error")
            return
        }
        
        do{
            let stringData = try String(contentsOf: url, encoding: .utf8)
            let data = stringData.data(using: String.Encoding.utf8)
            musicInfo = try JSONDecoder().decode(Music.self, from: data!)
            
        }catch{
            print("스트링 변환 실패")
        }
    }
    
}
