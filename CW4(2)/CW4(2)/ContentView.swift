//
//  ContentView.swift
//  CW4(2)
//
//  Created by Sedra Asrawi on 07/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var photo  = ("question")
    @State var backecolor1 : Color = .white
    @State var backecolor2 : Color = .white
    @State var backecolor3 : Color = .white
    @State var backecolor4 : Color = .white
    @State var fontcolor1 : Color = .red
    @State var fontcolor2 : Color = .red
    @State var fontcolor3 : Color = .red
    @State var fontcolor4 : Color = .red
    @State var messege = ""
    var body: some View {
        
        ZStack{
            
            Image("background2")
                .resizable()
                .scaledToFit()
                .frame(width: 530, height: 940)
                .opacity(0.5)
            VStack{
                
                Text("ماهو المسار المفضل لديك ؟")
                    .font(.custom(FontsManager.Lalezar.regular, size: 40))
                Spacer()
                
                Image(photo)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                Spacer()
                
                Text("iOS")
                    .frame(maxWidth: 200)
                    .foregroundColor(fontcolor1)
                    .padding()
                    .background(backecolor1).cornerRadius(50)
                    .font(.headline)
                    .onTapGesture {
                        photo = "apple"
                        backecolor1 = .black
                        fontcolor1 = .white
                        
                        backecolor2 = .white
                        fontcolor2 = .red
                        
                        backecolor3 = .white
                        fontcolor3 = .red
                        
                        backecolor4 = .white
                        fontcolor4 = .red
                        
                        messege = "برافو تفهم 😍"
                    }
                    .onLongPressGesture{
                        photo = "question"
                        backecolor1 = .white
                        fontcolor1 = .red
                        
                        backecolor2 = .white
                        fontcolor2 = .red
                        
                        backecolor3 = .white
                        fontcolor3 = .red
                        
                        backecolor4 = .white
                        fontcolor4 = .red
                        
                        messege = ""

                        
                        
                        
                        
                    }
                    
                     
                    
                Text("GameDev")
                    .frame(maxWidth: 200)
                    .foregroundColor(fontcolor2)
                    .padding()
                    .background(backecolor2).cornerRadius(50)
                    .font(.headline)
                    .onTapGesture {
                        photo = "game"
                        backecolor2 = .purple
                        fontcolor2 = .white
                        
                        backecolor1 = .white
                        fontcolor1 = .red
                        
                        backecolor3 = .white
                        fontcolor3 = .red
                        
                        backecolor4 = .white
                        fontcolor4 = .red
                        
                        messege = ""
                        
                        
                    }
                    .onLongPressGesture{
                        photo = "question"
                        backecolor1 = .white
                        fontcolor1 = .red
                        
                        backecolor2 = .white
                        fontcolor2 = .red
                        
                        backecolor3 = .white
                        fontcolor3 = .red
                        
                        backecolor4 = .white
                        fontcolor4 = .red
                        
                        messege = ""

                        
                        
                    }
                    
                Text("Web")
                    .frame(maxWidth: 200)
                    .foregroundColor(fontcolor3)
                    .padding()
                    .background(backecolor3).cornerRadius(50)
                    .font(.headline)
                    .onTapGesture {
                        photo = "web"
                        backecolor3 = .blue
                        fontcolor3 = .white
                        
                        backecolor1 = .white
                        fontcolor1 = .red
                        
                        backecolor2 = .white
                        fontcolor2 = .red
                        
                        backecolor4 = .white
                        fontcolor4 = .red
                        
                        messege = ""

                        
                        
                    }
                    .onLongPressGesture{
                        photo = "question"
                        backecolor1 = .white
                        fontcolor1 = .red
                        
                        backecolor2 = .white
                        fontcolor2 = .red
                        
                        backecolor3 = .white
                        fontcolor3 = .red
                        
                        backecolor4 = .white
                        fontcolor4 = .red
                        
                        messege = ""

                        
                        
                    }
                    
                Text("Android")
                    .frame(maxWidth: 200)
                    .foregroundColor(fontcolor4)
                    .padding()
                    .background(backecolor4).cornerRadius(50)
                    .font(.headline)
                    .onTapGesture {
                        photo = "android"
                        backecolor4 = .green
                        fontcolor4 = .white
                        
                        backecolor1 = .white
                        fontcolor1 = .red
                        
                        backecolor2 = .white
                        fontcolor2 = .red
                        
                        backecolor3 = .white
                        fontcolor3 = .red
                        
                        messege = ""

                    }
                    .onLongPressGesture{
                        photo = "question"
                        backecolor1 = .white
                        fontcolor1 = .red
                        
                        backecolor2 = .white
                        fontcolor2 = .red
                        
                        backecolor3 = .white
                        fontcolor3 = .red
                        
                        backecolor4 = .white
                        fontcolor4 = .red
                        
                        messege = ""

                        
                        
                    }
                    
                
                
                
                Spacer()
                
                Text(messege)
                    .font(.system(size: 20))
        .frame (width: 200, height: 100)
                
            
                
            }.frame(width: 445, height: 750)
               
            
            
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
