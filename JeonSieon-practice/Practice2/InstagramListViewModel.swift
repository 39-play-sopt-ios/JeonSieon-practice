//
//  InstagramListViewModel.swift
//  Practice1
//
//  Created by 전시언 on 10/17/26.
//


import Foundation
import Observation

@Observable
final class InstagramListViewModel{
    private(set) var listDm: [DMModel] = [
        DMModel(userName: "juju", postImageName: "Dog", caption: "안녕하세용 주주예용", timeText: "지금"),
        DMModel(userName: "huihui", postImageName: "Dog", caption: "반가워용 희희예용", timeText: "지금"),
        DMModel(userName: "yupyup", postImageName: "Rectangle", caption: "안녕하세용 주주예용", timeText: "15m"),
        DMModel(userName: "tacos", postImageName: "Oval", caption: "아~~ 재밌다😂😂", timeText: "20m"),
        DMModel(userName: "kk_kk", postImageName: "Dog", caption: "나의 노래를 들어보실 분 나는 케케", timeText: "1m"),
        DMModel(userName: "hello_moa", postImageName: "Dog", caption: "모아요에 오신 걸 환영", timeText: "2h"),
        DMModel(userName: "goTosleep", postImageName: "Dog", caption: "쿨쿨...", timeText: "4h"),
        DMModel(userName: "hungryMan", postImageName: "Dog", caption: "저랑 떵개하실래요?", timeText: "5h"),
        DMModel(userName: "moamoayo", postImageName: "Dog", caption: "모아요에서 사과 한 입! 앙~", timeText: "10h")
        
    ]
}
