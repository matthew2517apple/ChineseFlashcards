//
//  TranslationViewController.swift
//  ChineseFlashcards
//
//  Created by Matthew Curran on 4/2/19.
//  Copyright © 2019 Matthew. All rights reserved.
//

import UIKit
import AVFoundation

class TranslationViewController: UIViewController {
    
    @IBOutlet var chineseCharacter: UILabel!
    @IBOutlet var pinyin: UILabel!
    @IBOutlet var englishTranslation: UILabel!
    
    var char: Char?
    
    let synthesizer = AVSpeechSynthesizer()
    let voice = AVSpeechSynthesisVoice(language: "zh-CN")
    let englishVoice = AVSpeechSynthesisVoice(language: "en-US")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let char = char else { return }
        
        chineseCharacter.text =  char.chineseCharacter
        pinyin.text = char.pinyin
        englishTranslation.text = char.englishTranslation
    }
    
    @IBAction func readAloudTapped(_ sender: Any) {
        guard let char = char else { return }
        
        let audio = AVSpeechUtterance(string: char.chineseCharacter)
        audio.voice = voice
        synthesizer.speak(audio)
    }
    
    @IBAction func readEnglishAloudTapped(_ sender: Any) {
        guard let english = char?.englishTranslation else { return }
        
        let audio = AVSpeechUtterance(string: english)
        audio.voice = englishVoice
        synthesizer.speak(audio)
    }
}
