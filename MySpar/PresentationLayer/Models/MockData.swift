//
//  MockData.swift
//  MySpar
//
//  Created by Элина Карапетян on 14.08.2023.
//

import Foundation

struct MockData{
    static let shared = MockData()
    
    private let stories: ListSection = {
        .stories([ListItem(title: "Привилегии\n'Мой SPAR'", image: "stories_icon1"),
                  ListItem(title: "Мы в\nсоцсетях", image: "stories_icon2"),
                  ListItem(title: "KLERN", image: "stories_icon3"),
                  ListItem(title: "Медовый\nCпас", image: "stories_icon4"),
                  ListItem(title: "Новинки\nнедели", image: "stories_icon5"),
                  ListItem(title: "Рецепт\nнедели", image: "stories_icon6"),
                  ListItem(title: "Городецкая\nроспись", image: "stories_icon7")])
    }()
    
//    private let promotions: ListSection = {
//        .promotions(["promotions_icon1", "promotions_icon2", "promotions_icon3",
//                     "promotions_icon4", "promotions_icon5", "promotions_icon6",
//                     "promotions_icon7", "promotions_icon8", "promotions_icon9",
//                     "promotions_icon10", "promotions_icon11", "promotions_icon12",
//                     "promotions_icon13", "promotions_icon14", "promotions_icon15",
//                     "promotions_icon16", "promotions_icon17", "promotions_icon18",
//                     "promotions_icon19", "promotions_icon20"])
//    }()
//
//    private let selection: ListSection = {
//        .selection(["selection_icon1", "selection_icon2", "selection_icon3", "selection_icon4", "selection_icon5", "selection_icon6", "selection_icon7", "selection_icon8", "selection_icon9"])
//    }()
//
//    private let recommend: ListSection = {
//        .recommend(["recommend_icon1", "recommend_icon2", "recommend_icon3", "recommend_icon4", "recommend_icon5", "recommend_icon6", "recommend_icon7", "recommend_icon8", "recommend_icon9", "recommend_icon10"])
//    }()
//
//    private let sweetmood: ListSection = {
//        .sweetMood(["sweetmood_icon1", "sweetmood_icon2", "sweetmood_icon3", "sweetmood_icon4", "sweetmood_icon5", "sweetmood_icon6", "sweetmood_icon7", "sweetmood_icon8", "sweetmood_icon9", "sweetmood_icon10"])
//    }()
    
    var pageData: [ListSection]{
        [stories]
    }
}
