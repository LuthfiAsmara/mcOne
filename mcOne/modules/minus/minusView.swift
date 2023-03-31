//
//  minusView.swift
//  mcOne
//
//  Created by Luthfi Asmara on 16/03/23.
//

import SwiftUI

struct MinusView: View{
    
    var body: some View{
        NavigationView {
            VStack{
                AppBarWidget(title: "Pengurangan",
                             destination: AnyView(HomeView()))
                
                Text("Pada pembelajaran pengurangan kita akan belajar bagaimana caranya suatu benda menjadi lebih sedikit!")
                    .frame(width: 320, alignment: .center)
                    .padding(EdgeInsets.init(top: 10, leading: 10, bottom: 10, trailing: 10))
                    .background(Color.cream)
                    .cornerRadius(15)
                
                
                Spacer()
                
                
            }
        }.navigationBarBackButtonHidden(true)
        }
    }



struct MinusView_Previews: PreviewProvider {
    static var previews: some View {
        MinusView()
    }
}

