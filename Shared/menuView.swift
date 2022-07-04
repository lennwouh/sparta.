//
//  menuView.swift
//  tanken-app
//
//  Created by Lennox Marten on 27.06.22.
//

import SwiftUI

struct menuView: View {
    var body: some View {
        
        HStack(){
        
            //Spacer().frame(width: 150)
            
            
        GeometryReader { geometry in
        
            VStack(alignment: .leading){
                
                
              /*
                GeometryReader { geometry in
                    
    
                
                VStack{
                    
                    
                    
                    
                    
                    
                }
                        .frame(maxWidth: geometry.size.width/2, maxHeight: .infinity, alignment: .bottomTrailing)
                    .background(.white)
                    .opacity(0.8)
                    .edgesIgnoringSafeArea(.all)
                    
                }*/
                
          
                       
                
            Text("Menu")
                    .padding(.top, 100)
                    .font(.title)
                    .foregroundColor(.gray)
                
                
                
            HStack{
                Image(systemName: "person")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                
                Text("Benutzer")
                    .foregroundColor(.gray)
                    .font(.headline)
         
            }
            .padding(.top, 50)
            
            HStack{
                Image(systemName: "location")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                
                Text("Standort")
                    .foregroundColor(.gray)
                    .font(.headline)
         
            }.padding(.top, 30)
            
            HStack{
                Image(systemName: "gear")
                    .foregroundColor(.gray)
                    .imageScale(.large)
                
                Text("Einstellungen")
                    .foregroundColor(.gray)
                    .font(.headline)
                
         
            }.padding(.top, 30)
               
                
                HStack{
                    Image(systemName: "chart.bar")
                        .foregroundColor(.gray)
                        .imageScale(.large)
                    
                    Text("Tankstatistik")
                        .foregroundColor(.gray)
                        .font(.headline)
                    
             
                }.padding(.top, 30)
                    Spacer()
            
            
            }.padding(.trailing, 30)
                .frame(maxWidth: .infinity, alignment: .trailing)
         .background(.white)
         .opacity(0.8)
         .edgesIgnoringSafeArea(.all)
            
             
            
            
        
            }
        }
    }
}

struct menuView_Previews: PreviewProvider {
    static var previews: some View {
        menuView()
    }
}

