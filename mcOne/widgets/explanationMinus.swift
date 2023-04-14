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
        ZStack {
                    Image("bg")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .blur(radius: 8)
                    VStack(alignment: .leading){
                        RoundedRectangle(cornerRadius: 20)
                            .frame(width: 120, height: 40)
                            .foregroundColor(Color(red: 235/255, green: 194/255, blue: 151/255))
                            .overlay(Text("Penjelasan")
                                .font(.headline)
                                .fontWeight(.medium)
                                .foregroundColor(Color(red: 0.349, green: 0.288, blue: 0.224, opacity: 100.0)))
                        ZStack {
                            Color(red: 255/255, green: 236/255, blue: 160/255)
                            VStack(alignment: .leading) {
                                HStack {
                                    if stepOne{
                                        VStack{
                                            Text("\(num1)")
                                                .font(.headline)
                                                .fontWeight(.medium)
                                                .foregroundColor(Color(red: 0.351, green: 0.288, blue: 0.223))
                                            ZStack{
                                                Color(red: 255/255, green: 249/255, blue: 223/255)
                                                HStack{
                                                    Spacer()
                                                    ForEach(0..<num1, id: \.self){ _ in
                                                        Image("donat")
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fit)
                                                            .padding(.vertical)
                                                        Spacer()
                                                    }
                                                }
                                            }
                                            .frame(width: 150, height: 60)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 2, x: -2, y: 4)
                                            
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
                                                SoundService.instance.player?.stop()
                                            }
                                        }
                                    }
                                    if stepTwo{
                                        VStack{
                                            Text(" ")
                                            Rectangle()
                                                .foregroundColor(Color(red: 255/255, green: 249/255, blue: 223/255))
                                                .frame(width: 40, height: 40)
                                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                                .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 2, x: -2, y: 4)
                                                .overlay(
                                                    Text("-")
                                                        .font(.headline)
                                                        .fontWeight(.medium)
                                                        .foregroundColor(Color(red: 0.349, green: 0.288, blue: 0.224, opacity: 100.0))
                                                    
                                                )
                                            
                                        }.onAppear{
                                            SoundService.instance.dikurang()
                                            Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { _ in
                                                self.stepThree = true
                                                SoundService.instance.player?.stop()
                                            }
                                           
                                        }
                                    }
                                    if stepThree{
                                        VStack{
                                            Text("\(num2)")
                                                .font(.headline)
                                                .fontWeight(.medium)
                                                .foregroundColor(Color(red: 0.349, green: 0.288, blue: 0.224, opacity: 100.0))
                                            
                                            ZStack{
                                                Color(red: 255/255, green: 249/255, blue: 223/255)
                                                HStack{
                                                    Spacer()
                                                    ForEach(0..<num2, id: \.self){ _ in
                                                        Image("donat")
                                                            .resizable()
                                                            .aspectRatio(contentMode: .fit)
                                                            .padding(.vertical)
                                                        Spacer()
                                                    }
                                                }
                                            }
                                            .frame(width: 150, height: 60)
                                            .clipShape(RoundedRectangle(cornerRadius: 10))
                                            .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 2, x: -2, y: 4)
                                            
                                            
                                        }.onAppear{
                                            switch num1{
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
                                            Timer.scheduledTimer(withTimeInterval: 3, repeats: false) { _ in
                                                self.stepFour = true
                                                SoundService.instance.player?.stop()
                                            }
                                        }
                                    }
                                    Spacer()
                                }
                                
                                HStack {
                                    if stepFour{
                                        VStack{
                                            Text(" ")
                                            Rectangle()
                                                .foregroundColor(Color(red: 235/255, green: 194/255, blue: 151/255))
                                                .frame(width: 40, height: 40)
                                                .clipShape(RoundedRectangle(cornerRadius: 10))
                                                .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 2, x: -2, y: 4)
                                                .overlay(
                                                    Text("=")
                                                        .font(.headline)
                                                        .fontWeight(.medium)
                                                        .foregroundColor(Color(red: 0.349, green: 0.288, blue: 0.224, opacity: 100.0))
                                                    
                                                )
                                            
                                        }.onAppear{
                                            SoundService.instance.samaDengan()
                                            Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { _ in
                                                self.stepFive = true
                                                SoundService.instance.player?.stop()
                                            }
                                            
                                        }
                                    }
                                    if stepFive{
                                    VStack{
                                        Text("\(ans)")
                                            .font(.headline)
                                            .fontWeight(.medium)
                                            .foregroundColor(Color(red: 0.349, green: 0.288, blue: 0.224, opacity: 100.0))
                                        
                                        ZStack{
                                            Color(red: 255/255, green: 249/255, blue: 223/255)
                                            HStack{
                                                Spacer()
                                                ForEach(0..<ans, id: \.self){ _ in
                                                    Image("donat")
                                                        .resizable()
                                                        .aspectRatio(contentMode: .fit)
                                                        .padding(.vertical)
                                                    Spacer()
                                                }
                                            }
                                        }
                                        .frame(width: 310, height: 60)
                                        .clipShape(RoundedRectangle(cornerRadius: 10))
                                        .shadow(color: Color(red: 96/255, green: 96/255, blue: 96/255, opacity: 0.1), radius: 2, x: -2, y: 4)
                                        
                                    }.onAppear{
                                        switch num1{
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
                                        Timer.scheduledTimer(withTimeInterval: 2, repeats: false) { _ in
                                            SoundService.instance.player?.stop()
                                        }
                                    }
                                }
                            }
                            }
                            .frame(width: 500, height: 200)
                        }
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 600, height: 250)
                    }
                    Image("teacher")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 400, height: 400, alignment: .trailing)
                        .offset(x: 200, y: 30)
        }.onAppear{
            self.stepOne = true

        }
    }
}

struct ExplanationMinusView_Previews: PreviewProvider {
    static var previews: some View {
        ExplanationMinusView(num1: 3, num2: 2, ans: 1)
    }
}

