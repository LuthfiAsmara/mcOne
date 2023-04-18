//
//  explanationMinus.swift
//  mcOne
//
//  Created by Luthfi Asmara on 05/04/23.
//

import SwiftUI

struct ExplanationMinusView : View{
    var num1: Int
    var num2: Int
    var ans: Int
    @State var stepOne: Bool = false
    @State var stepTwo: Bool = false
    @State var stepThree: Bool = false
    @State var stepFour: Bool = false
    @State var stepFive: Bool = false
//    init(title: String, destination: AnyView ) {
//        self.title = title
//        self.destination = destination
//    }
    var body: some View{
        let firstColumns = Int(ceil(sqrt(Double(num1))))
        let firstRows = Int(ceil(Double(num1) / Double(firstColumns)))
        let secondColumns = Int(ceil(sqrt(Double(num2))))
        let secondRows = Int(ceil(Double(num2) / Double(secondColumns))) //
        let thirdColumns = Int(ceil(sqrt(Double(ans))))
        let thirdRows = Int(ceil(Double(ans) / Double(thirdColumns)))
        
        ZStack {
                    Image("bg")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .blur(radius: 8)
                    VStack(alignment: .leading){
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 120, height: 40)
                            .foregroundColor(Color("question-mark"))
                            .overlay(Text("Penjelasan")
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundColor(Color("font")))
                        ZStack {
                            Color("explanation")
                            VStack(alignment: .leading) {
                                HStack {
                                    if stepOne{
                                        VStack{
                                            ZStack{
                                                Color("cream")
                                                VStack(spacing: 0){
                                                    ForEach(0..<firstRows, id: \.self) { row in
                                                        HStack(spacing: 0) {
                                                            ForEach(0..<firstColumns, id: \.self) { column in
                                                                let index = row * firstColumns + column
                                                                if index < num1 {
                                                                    Image("donat")
                                                                        .resizable()
                                                                        .scaledToFit()
                                                                        .padding(3)
                                                                        .shadow(color: Color("shadow"), radius: 1, x: -2, y: 4)
                                                                    
                                                                    
                                                                } else {
                                                                    Image("donat")
                                                                        .resizable()
                                                                        .scaledToFit()
                                                                        .padding(3)                               .hidden()
                                                                }
                                                            }
                                                        }
                                                    }
                                                }.padding()
                                            }
                                            .frame(width: 150, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .shadow(color: Color("shadow"), radius: 2, x: -2, y: 4)
                                            
                                        }.onAppear{
                                            switch num1{
                                            case 1:
                                                SoundService.instance.satuAwal()
                                            case 2:
                                                SoundService.instance.duaAwal()
                                            case 3:
                                                SoundService.instance.tigaAwal()
                                            case 4:
                                                SoundService.instance.empatAwal()
                                            case 5:
                                                SoundService.instance.limaAwal()
                                            case 6:
                                                SoundService.instance.enamAwal()
                                            case 7:
                                                SoundService.instance.tujuhAwal()
                                            case 8:
                                                SoundService.instance.delapanAwal()
                                            case 9:
                                                SoundService.instance.sembilanAwal()
                                            default:
                                                SoundService.instance.jadi()
                                            }
                                            Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { _ in
                                                self.stepTwo = true
                                                
                                            }
                                        }
                                    }
                                    if stepTwo{
                                        VStack{
                                            Rectangle()
                                                .foregroundColor(Color("cream"))
                                                .frame(width: 40, height: 40)
                                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                                .shadow(color: Color("shadow"), radius: 2, x: -2, y: 4)
                                                .overlay(
                                                    Text("-")
                                                        .font(.headline)
                                                        .fontWeight(.medium)
                                                        .foregroundColor(Color("font"))
                                                )
                                            
                                        }.onAppear{
                                            SoundService.instance.dikurang()
//                                            SoundService.instance.player?.stop()
                                            Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { _ in
                                                self.stepThree = true
                                                
                                            }
                                           
                                        }
                                    }
                                    if stepThree{
                                        VStack{
                                            ZStack{
                                                Color("cream")
                                                VStack(spacing: 0) {
                                                    ForEach(0..<secondRows, id: \.self) { row in
                                                        HStack(spacing: 0) {
                                                            ForEach(0..<secondColumns, id: \.self) { column in
                                                                let index = row * secondColumns + column
                                                                if index < num2 {
                                                                    Image("donat")
                                                                        .resizable()
                                                                        .scaledToFit()
                                                                        .padding(3)
                                                                        .shadow(color: Color("shadow"), radius: 1, x: -2, y: 4)
                                                                    
                                                                } else {
                                                                    Image("donat")
                                                                        .resizable()
                                                                        .scaledToFit()
                                                                        .padding(3)                               .hidden()
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                                .padding()
                                            }
                                            .frame(width: 150, height: 100)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .shadow(color: Color("shadow"), radius: 2, x: -2, y: 4)
                                            
                                            
                                        }.onAppear{
                                            switch num2{
                                            case 1:
                                                SoundService.instance.satuAkhir()
                                            case 2:
                                                SoundService.instance.duaAkhir()
                                            case 3:
                                                SoundService.instance.tigaAkhir()
                                            case 4:
                                                SoundService.instance.empatAkhir()
                                            case 5:
                                                SoundService.instance.limaAkhir()
                                            case 6:
                                                SoundService.instance.enamAkhir()
                                            case 7:
                                                SoundService.instance.tujuhAkhir()
                                            case 8:
                                                SoundService.instance.delapanAkhir()
                                            case 9:
                                                SoundService.instance.sembilanAkhir()
                                            default:
                                                SoundService.instance.jadi()
                                            }
//                                            SoundService.instance.player?.stop()

                                            Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { _ in
                                                self.stepFour = true
                                            }
                                        }
                                    }
                                    Spacer()
                                }
                                
                                HStack {
                                    if stepFour{
                                        VStack{
                                            Rectangle()
                                                .foregroundColor(Color("bajuyona"))
                                                .frame(width: 40, height: 40)
                                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                                .shadow(color: Color("shadow"), radius: 2, x: -2, y: 4)
                                                .overlay(
                                                Text("=")
                                                    .font(.headline)
                                                    .fontWeight(.medium)
                                                    .foregroundColor(Color("font"))

                                                )
                                            
                                        }.onAppear{
                                            SoundService.instance.samaDengan()
//                                            SoundService.instance.player?.stop()

                                            Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { _ in
                                                self.stepFive = true
                                            }
                                            
                                        }
                                    }
                                    if stepFive{
                                    VStack{
                                        ZStack{
                                            Color("bajuyona")
                                            VStack(spacing: 0) {
                                                ForEach(0..<thirdRows, id: \.self) { row in
                                                    HStack(spacing: 0) {
                                                        ForEach(0..<thirdColumns, id: \.self) { column in
                                                            let index = row * thirdColumns + column
                                                            if index < ans {
                                                                Image("donat")
                                                                    .resizable()
                                                                    .scaledToFit()
                                                                    .padding(3)
                                                                    .shadow(color: Color("shadow"), radius: 1, x: -2, y: 4)
                                                                
                                                                
                                                            } else {
                                                                Image("donat")
                                                                    .resizable()
                                                                    .scaledToFit()
                                                                    .padding(3)                               .hidden()
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                            .padding()
                                        }
                                        .frame(width: 310, height: 120)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .shadow(color: Color("shadow"), radius: 2, x: -2, y: 4)
                                        
                                    }.onAppear{
                                        switch ans{
                                        case 1:
                                            SoundService.instance.satuAkhir()
                                        case 2:
                                            SoundService.instance.duaAkhir()
                                        case 3:
                                            SoundService.instance.tigaAkhir()
                                        case 4:
                                            SoundService.instance.empatAkhir()
                                        case 5:
                                            SoundService.instance.limaAkhir()
                                        case 6:
                                            SoundService.instance.enamAkhir()
                                        case 7:
                                            SoundService.instance.tujuhAkhir()
                                        case 8:
                                            SoundService.instance.delapanAkhir()
                                        case 9:
                                            SoundService.instance.sembilanAkhir()
                                        default:
                                            SoundService.instance.jadi()
                                        }
//                                        SoundService.instance.player?.stop()

                                        Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { _ in
                                            SoundService.instance.nahMinus()
                                        }
                                    }
                                }
                            }
                            }
                            .frame(width: 350, height: 250)
                            .offset(x:-10)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width:500, height: 300)
                    }
                    .offset(x:-70)
                    Image("teacher")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 400, alignment: .trailing)
                        .offset(x: 200, y: 30)
        }.onAppear{
            SoundService.instance.mariKitaHitungBersama()
            Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { _ in
                self.stepOne = true
            }
            

        }
    }
}

struct ExplanationMinusView_Previews: PreviewProvider {
    static var previews: some View {
        ExplanationMinusView(num1: 3, num2: 2, ans: 1)
    }
}

