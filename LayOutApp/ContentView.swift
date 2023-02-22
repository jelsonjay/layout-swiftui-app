//
//  ContentView.swift
//  LayOutApp
//
//  Created by Jelson J on 22/02/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var name = "Swift programming language"
    var body: some View {
        
        ZStack {
            //Color.mint.opacity(0.5)
            Rectangle()
            //.fill(Color("Skyblue").gradient)
                .fill(
                    Gradient(colors: [Color("Vermelho"), Color("Amarelo")])
                )
                .ignoresSafeArea()
            GeometryReader { proxy in
                VStack (spacing: 25){
                    
                    Text("JavaScript cool programming language")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color("Skyblue"))
                        .cornerRadius(9)
                    
                    
                    Spacer()
                    Text(name)
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.center)
                    //.padding()
                        .frame(height: 120)
                        .frame(maxWidth: .infinity)
                        .border(.mint)
                        .cornerRadius(1)
                    
                    Spacer()
                    Divider()
                        .background(.black)
                        .padding()
                        .frame(width: 170)
                    Rectangle()
                        .fill(.indigo)
                        .frame(width: proxy.size.width * (2/3), height: 1)
                    
                    HStack{
                        Button("Press Me"){
                            name = "SwiftUI is good framework"
                        }
                        .buttonStyle(.borderedProminent)
                        Spacer()
                        
                        Button("Click Button", action: {name = "I need stick with iOS "})
                            .buttonStyle(.borderedProminent)
                    }
                    .padding()
                    //.tint(Color("Skyblue"))
                }
            }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
        
    }
}
