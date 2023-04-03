//
//  sound.swift
//  mcOne
//
//  Created by Luthfi Asmara on 02/04/23.
//

import SwiftUI
import AVKit

class SoundService{
    static let instance = SoundService()
    var player: AVAudioPlayer?
    
    func PlaySound(){
        guard let soundUrl = Bundle.main.url(forResource: "sound", withExtension: "mp3") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = -1
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
}


