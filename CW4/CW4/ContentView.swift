//
//  ContentView.swift
//  CW4
//
//  Created by Sedra Asrawi on 06/08/2022.
//


 

import SwiftUI

struct ContentView: View {
   @State var grade = ""
   @State var result = ""
    @State var gradecolor : Color = .green

    
    var body: some View {
        
        ZStack{
            
           
             RadialGradient(
                 gradient: Gradient(colors: [Color("Color1"), Color("Color2")]),
                 center: .topLeading,
                 startRadius: 1,
                 endRadius: 960)
             .ignoresSafeArea()
          
            
            VStack{
               
                Text("حاسبة الدرجات")
                    .font(.custom(FontsManager.Lalezar.regular, size: 50))
            
                Image("pass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                Spacer()
                
                TextField("Enter your grade",text: $grade)
                    .foregroundColor(.orange)
                    .padding()
                    .background(.white).cornerRadius(50)
                    .font(.headline)
                    .shadow(color: .black, radius: 100, x: 10, y: 10)
                
                
                
                Text("احسب درجتي")
                .padding()
                .font(.headline)
                .background(.orange.opacity(0.5))
                .cornerRadius(50)
                .foregroundColor(.white)
                .onTapGesture {
                    if
                        (Double(grade) ?? 0) >= 90{
                        result = "امتياز"
                        gradecolor = .green
                    }
                    
                    else if
                        (Double(grade) ?? 0) >= 80{
                        result = "جيد جداً"
                        gradecolor = Color("greenesh")
                    }
                    
                    else if
                        (Double(grade) ?? 0) >= 70{
                        result = "جيد"
                        gradecolor = .yellow
                    }
                    
                    else if
                        (Double(grade) ?? 0) >= 60{
                        result = "مقبول"
                        gradecolor = .orange
                    }
                    
                    else {
                        result = "راسب"
                        gradecolor = .red
                    }
                }
          
                    Spacer()
                
                  Text("لقد حصلت على درجة")
                    .padding()
                    .font(.title2)
                
                Spacer()
                    
                Text(result)
                    .font(.custom(FontsManager.Lalezar.regular, size: 90))
                    .frame(height:100)
                    .padding()
                    .foregroundColor(gradecolor)
                
                
           
                
                
            
                
               
                
            }.padding()
                .foregroundColor(.white)
            
            
            
            
            
        }
     
        
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
