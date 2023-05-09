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
        guard let soundUrl = Bundle.main.url(forResource: "sound", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func background(){
        guard let soundUrl = Bundle.main.url(forResource: "Tung tung", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = -1
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }

    func background_low(){
        guard let soundUrl = Bundle.main.url(forResource: "Tung tung", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = -1
            player?.play()
            player?.volume = 0.2
        } catch let error {
            print(error.localizedDescription)
        }
    }

    
    func satuAwal(){
        guard let soundUrl = Bundle.main.url(forResource: "1", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func satuAkhir(){
        guard let soundUrl = Bundle.main.url(forResource: "1t", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func duaAwal(){
        guard let soundUrl = Bundle.main.url(forResource: "2", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func duaAkhir(){
        guard let soundUrl = Bundle.main.url(forResource: "2t", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func tigaAwal(){
        guard let soundUrl = Bundle.main.url(forResource: "3", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func tigaAkhir(){
        guard let soundUrl = Bundle.main.url(forResource: "3t", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func empatAwal(){
        guard let soundUrl = Bundle.main.url(forResource: "4", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func empatAkhir(){
        guard let soundUrl = Bundle.main.url(forResource: "4t", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func limaAwal(){
        guard let soundUrl = Bundle.main.url(forResource: "5", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func limaAkhir(){
        guard let soundUrl = Bundle.main.url(forResource: "5t", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func enamAwal(){
        guard let soundUrl = Bundle.main.url(forResource: "6", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func enamAkhir(){
        guard let soundUrl = Bundle.main.url(forResource: "6t", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func tujuhAwal(){
        guard let soundUrl = Bundle.main.url(forResource: "7", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func tujuhAkhir(){
        guard let soundUrl = Bundle.main.url(forResource: "7t", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func delapanAwal(){
        guard let soundUrl = Bundle.main.url(forResource: "8", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func delapanAkhir(){
        guard let soundUrl = Bundle.main.url(forResource: "8t", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    

    func sembilanAwal(){
        guard let soundUrl = Bundle.main.url(forResource: "9", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func sembilanAkhir(){
        guard let soundUrl = Bundle.main.url(forResource: "9t", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func dikurang(){
        guard let soundUrl = Bundle.main.url(forResource: "Dikurang", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func ditambah(){
        guard let soundUrl = Bundle.main.url(forResource: "Ditambah", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func ingatMinus(){
        guard let soundUrl = Bundle.main.url(forResource: "ingatMinus", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
     
    func ingatPlus(){
        guard let soundUrl = Bundle.main.url(forResource: "ingatPlus", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func nahMinus(){
        guard let soundUrl = Bundle.main.url(forResource: "nahMinus", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func nahPlus(){
        guard let soundUrl = Bundle.main.url(forResource: "nahPlus", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func jadi(){
        guard let soundUrl = Bundle.main.url(forResource: "Jadi", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
    func samaDengan(){
        guard let soundUrl = Bundle.main.url(forResource: "samaDengan", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }

    func mariKitaHitungBersama(){
        guard let soundUrl = Bundle.main.url(forResource: "mariKitaHitungBersama", withExtension: "m4a") else { return }
        do {
            try AVAudioSession.sharedInstance().setCategory(.playback)
            player = try AVAudioPlayer(contentsOf: soundUrl)
            player?.numberOfLoops = 0
            player?.play()
        } catch let error {
            print(error.localizedDescription)
        }
    }
    
}


