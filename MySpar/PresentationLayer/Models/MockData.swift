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
        .stories([ListItem(title: "Привилегии\n'Мой SPAR'", image: "stories_icon1", unit: nil),
                  ListItem(title: "Мы в\nсоцсетях", image: "stories_icon2", unit: nil),
                  ListItem(title: "KLERN", image: "stories_icon3", unit: nil),
                  ListItem(title: "Медовый\nCпас", image: "stories_icon4", unit: nil),
                  ListItem(title: "Новинки\nнедели", image: "stories_icon5", unit: nil),
                  ListItem(title: "Рецепт\nнедели", image: "stories_icon6", unit: nil),
                  ListItem(title: "Городецкая\nроспись", image: "stories_icon7", unit: nil)])
    }()
    
    private let promotions: ListSection = {
        .promotions([ListItem(title: "", image: "promotions_icon1", unit: nil),
                     ListItem(title: "", image: "promotions_icon2", unit: nil),
                     ListItem(title: "", image: "promotions_icon3", unit: nil),
                     ListItem(title: "", image: "promotions_icon4", unit: nil),
                     ListItem(title: "", image: "promotions_icon5", unit: nil),
                     ListItem(title: "", image: "promotions_icon6", unit: nil),
                     ListItem(title: "", image: "promotions_icon7", unit: nil),
                     ListItem(title: "", image: "promotions_icon8", unit: nil),
                     ListItem(title: "", image: "promotions_icon9", unit: nil),
                     ListItem(title: "", image: "promotions_icon10", unit: nil),
                     ListItem(title: "", image: "promotions_icon11", unit: nil),
                     ListItem(title: "", image: "promotions_icon12", unit: nil),
                     ListItem(title: "", image: "promotions_icon13", unit: nil),
                     ListItem(title: "", image: "promotions_icon14", unit: nil),
                     ListItem(title: "", image: "promotions_icon15", unit: nil),
                     ListItem(title: "", image: "promotions_icon16", unit: nil),
                     ListItem(title: "", image: "promotions_icon17", unit: nil),
                     ListItem(title: "", image: "promotions_icon18", unit: nil),
                     ListItem(title: "", image: "promotions_icon19", unit: nil),
                     ListItem(title: "", image: "promotions_icon20", unit: nil)])
    }()

    private let selection: ListSection = {
        .selection([ListItem(title: "", image: "selection_icon1", unit: nil),
                    ListItem(title: "", image: "selection_icon2", unit: nil),
                    ListItem(title: "", image: "selection_icon3", unit: nil),
                    ListItem(title: "", image: "selection_icon4", unit: nil),
                    ListItem(title: "", image: "selection_icon5", unit: nil),
                    ListItem(title: "", image: "selection_icon6", unit: nil),
                    ListItem(title: "", image: "selection_icon7", unit: nil),
                    ListItem(title: "", image: "selection_icon8", unit: nil),
                    ListItem(title: "", image: "selection_icon9", unit: nil)])
    }()

    private let recommend: ListSection = {
        .recommend([ListItem(title: "109.90", image: "recommend_icon1", unit: "rubforshtuk"),
                    ListItem(title: "89.99", image: "recommend_icon2", unit: "rubfor100g"),
                    ListItem(title: "119.99", image: "recommend_icon3", unit: "rubfor100g"),
                    ListItem(title: "549", image: "recommend_icon4", unit: "rubforshtuk"),
                    ListItem(title: "74.90", image: "recommend_icon5", unit: "rubforshtuk"),
                    ListItem(title: "74.90", image: "recommend_icon6", unit: "rubforshtuk"),
                    ListItem(title: "129.90", image: "recommend_icon7", unit: "rubforshtuk"),
                    ListItem(title: "109.90", image: "recommend_icon8", unit: "rubforshtuk"),
                    ListItem(title: "109.90", image: "recommend_icon9", unit: "rubforshtuk"),
                    ListItem(title: "279.90", image: "recommend_icon10", unit: "rubforshtuk"),
                   ])
    }()

    private let sweetmood: ListSection = {
        .sweetMood([ListItem(title: "149.90", image: "sweetmood_icon1", unit: "rubforshtuk"),
                    ListItem(title: "79.90", image: "sweetmood_icon2", unit: "rubforshtuk"),
                    ListItem(title: "79.90", image: "sweetmood_icon3", unit: "rubforshtuk"),
                    ListItem(title: "79.90", image: "sweetmood_icon4", unit: "rubforshtuk"),
                    ListItem(title: "239.90", image: "sweetmood_icon5", unit: "rubforshtuk"),
                    ListItem(title: "239.90", image: "sweetmood_icon6", unit: "rubforshtuk"),
                    ListItem(title: "99.90", image: "sweetmood_icon7", unit: "rubforshtuk"),
                    ListItem(title: "99.90", image: "sweetmood_icon8", unit: "rubforshtuk"),
                    ListItem(title: "99.90", image: "sweetmood_icon9", unit: "rubforshtuk"),
                    ListItem(title: "319.90", image: "sweetmood_icon10", unit: "rubforshtuk")])
    }()
    
    private let bbqwithbang: ListSection = {
        .BBQWithABang([ListItem(title: "149.90", image: "sweetmood_icon1", unit: "rubforshtuk"),
                       ListItem(title: "79.90", image: "sweetmood_icon2", unit: "rubforshtuk"),
                       ListItem(title: "79.90", image: "sweetmood_icon3", unit: "rubforshtuk"),
                       ListItem(title: "79.90", image: "sweetmood_icon4", unit: "rubforshtuk"),
                       ListItem(title: "239.90", image: "sweetmood_icon5", unit: "rubforshtuk"),
                       ListItem(title: "239.90", image: "sweetmood_icon6", unit: "rubforshtuk"),
                       ListItem(title: "99.90", image: "sweetmood_icon7", unit: "rubforshtuk"),
                       ListItem(title: "99.90", image: "sweetmood_icon8", unit: "rubforshtuk"),
                       ListItem(title: "99.90", image: "sweetmood_icon9", unit: "rubforshtuk"),
                       ListItem(title: "319.90", image: "sweetmood_icon10", unit: "rubforshtuk")])
    }()
    
    var pageData: [ListSection]{
        [stories, promotions, selection, recommend, sweetmood, bbqwithbang]
    }
}
