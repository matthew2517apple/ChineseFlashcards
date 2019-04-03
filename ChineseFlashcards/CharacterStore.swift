//
//  CharacterStore.swift
//  ChineseFlashcards
//
//  Created by Matthew Curran on 4/2/19.
//  Copyright © 2019 Matthew. All rights reserved.
//

import Foundation

class CharacterStore {
    
    var chars: [Char]
    
    init() {
        let snow = Char(chineseCharacter: "雪", pinyin: "Xuě", englishTranslation: "Snow")
        let wind = Char(chineseCharacter: "风", pinyin: "Fēng", englishTranslation: "Wind")
        let rain = Char(chineseCharacter: "雨", pinyin: "Yǔ", englishTranslation: "Rain")
        let warm = Char(chineseCharacter: "暖和", pinyin: "Nuǎnhuo", englishTranslation: "Warm")
        let sunny = Char(chineseCharacter: "晴朗", pinyin: "Qínglǎng", englishTranslation: "Sunny")
        let fog = Char(chineseCharacter: "雾", pinyin: "wù", englishTranslation: "Fog")
        
        chars = [snow, wind, rain, warm, sunny, fog]
        // chars.shuffle()    // Need to update to Swift 4.2 to run this... lab compute has Swift 4.1
    }
}
