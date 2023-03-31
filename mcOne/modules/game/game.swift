//
//  game.swift
//  mcOne
//
//  Created by Luthfi Asmara on 17/03/23.
//

import SwiftUI

struct GameView: View{
    
    
    var body: some View{
        NavigationView{
            
            VStack(alignment: .leading){
                AppBarWidget(title: "Game", destination: AnyView(HomeView()))
                Question()
                    .padding(.bottom,30)
                Answer()
                
                
                Spacer()
            }
        }.navigationBarBackButtonHidden(true)
    }
}

struct Question: View{
    var body: some View{
        VStack(alignment: .leading){
            Text("Pertanyaan 1").blackTextM17()
                .padding(.leading)
                .padding(.top)
            Text("Jawablah pertanyaan dibawah ini...")
                .padding(.leading)
                .padding(.bottom)
            HStack{
                ForEach(0..<3) { index in
                    Image("money")
                        .resizable()
                        .frame(width: 50, height: 50)
                        .padding(.top,5)
                        .padding(.leading,5)
                        .padding(.trailing,5)
                        .padding(.bottom,5)
                }
            }
            .background(
                Rectangle()
                    .inset(by: 1)
                    .stroke(Color.oldGreen, lineWidth: 2)
                
                
            )
            .padding(.leading)
            Text("Ada berapa uang di atas?")
                .padding(.leading)
                .padding(.top,10)
        }
    }
}

struct Answer: View{
    @State var isTrue = false
    var optionAnswer = ["1", "2", "3"]
    @State var selectedOptionAnswer = "3"
     
    
    var body: some View{
        if isTrue{
            HomeView()
        }else{
            HStack{
                ForEach(optionAnswer, id: \.self) {
                    
                    Text($0).blackTextB30()
                        .background(Circle()
                            .fill(Color.youngGreen)
                            .frame(width: 70, height: 70))
                        .padding(.horizontal,45)
                    
                }
            }.frame(maxWidth: .infinity)
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
