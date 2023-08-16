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
    
    private let promotions: ListSection = {
        .promotions([ListItem(title: "", image: "promotions_icon1"),
                     ListItem(title: "", image: "promotions_icon2"),
                     ListItem(title: "", image: "promotions_icon3"),
                     ListItem(title: "", image: "promotions_icon4"),
                     ListItem(title: "", image: "promotions_icon5"),
                     ListItem(title: "", image: "promotions_icon6"),
                     ListItem(title: "", image: "promotions_icon7"),
                     ListItem(title: "", image: "promotions_icon8"),
                     ListItem(title: "", image: "promotions_icon9"),
                     ListItem(title: "", image: "promotions_icon10"),
                     ListItem(title: "", image: "promotions_icon11"),
                     ListItem(title: "", image: "promotions_icon12"),
                     ListItem(title: "", image: "promotions_icon13"),
                     ListItem(title: "", image: "promotions_icon14"),
                     ListItem(title: "", image: "promotions_icon15"),
                     ListItem(title: "", image: "promotions_icon16"),
                     ListItem(title: "", image: "promotions_icon17"),
                     ListItem(title: "", image: "promotions_icon18"),
                     ListItem(title: "", image: "promotions_icon19"),
                     ListItem(title: "", image: "promotions_icon20")])
    }()

    private let selection: ListSection = {
        .selection([ListItem(title: "", image: "selection_icon1"),
                    ListItem(title: "", image: "selection_icon2"),
                    ListItem(title: "", image: "selection_icon3"),
                    ListItem(title: "", image: "selection_icon4"),
                    ListItem(title: "", image: "selection_icon5"),
                    ListItem(title: "", image: "selection_icon6"),
                    ListItem(title: "", image: "selection_icon7"),
                    ListItem(title: "", image: "selection_icon8"),
                    ListItem(title: "", image: "selection_icon9")])
    }()
//
//    private let recommend: ListSection = {
//        .recommend(["recommend_icon1", "recommend_icon2", "recommend_icon3", "recommend_icon4", "recommend_icon5", "recommend_icon6", "recommend_icon7", "recommend_icon8", "recommend_icon9", "recommend_icon10"])
//    }()
//
//    private let sweetmood: ListSection = {
//        .sweetMood(["sweetmood_icon1", "sweetmood_icon2", "sweetmood_icon3", "sweetmood_icon4", "sweetmood_icon5", "sweetmood_icon6", "sweetmood_icon7", "sweetmood_icon8", "sweetmood_icon9", "sweetmood_icon10"])
//    }()
    
    var pageData: [ListSection]{
        [stories, promotions, selection]
    }
}
