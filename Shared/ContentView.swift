//
//  ContentView.swift
//  Shared
//
//  Created by Lennox Marten on 20.06.22.
//

import Foundation
import SwiftUI
import UIKit



struct ContentView: View {
    
    @State var showMenu = false
    
    
    var body: some View{
        
        let drag = DragGesture()
            .onEnded{
                if $0.translation.width > 100 {
                    withAnimation {
                        self.showMenu = false
                    }
                }
            }
        /*
        let dragBack = DragGesture()
            .onEnded{
                if $0.translation.width > 100 {
                    print("true")
                    withAnimation{
                        self.showMenu = false
                    }
                }
            }*/
        
        return GeometryReader { geometry in
            
            ZStack(alignment: .trailing){
                
            
                MainView(showMenu: self.$showMenu)
                .frame(width: geometry.size.width, height: geometry.size.height)
              //  .disabled(self.showMenu ? true : true)
                
                
                
                
               
                if self.showMenu {
                    
                    MainView(showMenu: self.$showMenu).blur(radius: 12)
                    
                    
                    
                   
                    menuView()
                        .frame(width: geometry.size.width/2, height: geometry.size.height*0.8)
                        .cornerRadius(15)
                        .transition(.move(edge: .trailing))
                    
                  
                    }
            }
                .gesture(drag)
                
            }
            
        }
    
}



struct MainView: View {
    
    @Binding var showMenu: Bool
    @State var gas_stations: [Gas_station] = []
    @State var apiData = API()
    
    
    func generateCards() -> some View{
        
        ZStack(alignment: .leading){
            
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.3), lineWidth: 1)
                .frame(height: 150)
                .background(Color.white)
                .opacity(0.5)
                .cornerRadius(15)
            
            HStack{
            
            
        Image(systemName: "fuelpump")
                .foregroundColor(.white)
                .font(.system(size: 80))
                .multilineTextAlignment(.leading)
                
                
        Text("2,24€")
                    .foregroundColor(.white)
                    .font(.largeTitle)
            Spacer()
            
        VStack{
            
            Text("Entfernung: ")
                .padding()
                .foregroundColor(.white)
                
            
        Text("Standort: ")
                    .padding()
                    .foregroundColor(.white)
                
            }
            
        }
    }
        
    }
    
    @State private var searchText = ""
    
    var body: some View {
        
        
            
         
        
        
        
        ZStack{
            
            LinearGradient(colors: [Color.black, /*Color(red: 16/255, green: 48/255, blue: 99/255)*/Color.blue], startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea()
        
            ScrollView {
                
                
                
                
                
              ///  UIKit.UISearchBar()
            
                
                
            
            VStack(alignment: .leading) {
                
                HStack(){
                
                Text("sparta.")
                    .font(.largeTitle)
                    
                    .foregroundStyle(.linearGradient(
                        
                        
                        colors: [Color(red: 164/255, green: 197/255, blue: 242/255), Color(red: 255/255, green: 255/255, blue: 255/255) ],
                        startPoint: .leading,
                        endPoint: .bottom))
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation{
                        self.showMenu.toggle()
                            print("True")
                           // print(apiData.brandList)
                         //   print("This is a list: ", apiData.priceListDiesel)
                            
                        }
                       
                            
                        
                    }){
                        Image(systemName: "line.horizontal.3")
                            .imageScale(.large)
                            .foregroundColor(.white)
                            
                    }
                
                }
                
               // UISearchBar()
                    
                TextField(" Region eingeben", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    
                    .foregroundColor(.black)
                    .background(Color.white)
                    .opacity(0.3)
                    .textFieldStyle(.roundedBorder)
                    
                
                
             
            //VStack {
                
                
                
                ZStack(alignment: .leading){
                
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.3), lineWidth: 1)
                    .frame(height: 400)
                    .background(Color.white)
                    .opacity(0.5)
                    .cornerRadius(15)
                
                    
                    VStack(alignment: .leading){
                        
                        HStack{
                        
                        Image("aral_img")
                            
                                .resizable().aspectRatio(contentMode: .fit)
                            .foregroundColor(.white)
                            .padding(30)
                            .frame(width: 175, height: 175)
                            //.font(.system(size: 100))
                            
                            
                            
                        Spacer()
                            
                           
                            
                            Text("2,20€")
                               // .padding()
                                .font(.system(size: 60))
                                .foregroundColor(.white)
                                .padding(.top, 50)
                                .padding(.trailing, 20)
                               // .onAppear() {
                                 //   API().getGas_stations { (gas_stations) in
                                    //    self.gas_stations = gas_stations
                            
                        }
                       
                        Spacer()
                            .padding()
                       
                        
                        
                        HStack{
                            
                    Image(systemName: "car")
                                .padding()
                                .foregroundColor(.white)
                                .imageScale(.large)
                    
                    Text("Entfernung:")
                            .foregroundColor(.white)
                            .font(.title2)
                            
                    Spacer()
                            
                    Text("7.7km")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding()
                            
                            
                        }.padding(.bottom, -15)
                        
                        HStack{
                            
                    Image(systemName: "mappin.and.ellipse")
                                .padding()
                                .foregroundColor(.white)
                                .imageScale(.large)
                        
                            Text("  Standort:")
                            .foregroundColor(.white)
                            .font(.title2)
                            
                            Spacer()
                                    
                            Text("Meldorf")
                                .foregroundColor(.white)
                                .font(.largeTitle)
                                .padding()
                            
                            
                        }.padding(.top, -15)
                        
                        Spacer()
                           
                        
                    }
                    
                }
                
                
                
                
                Spacer()
                
                VStack {
                
            }
                Text("In deiner Umgebung")
                    .colorInvert()
                    .font(.title2)
                    
                
           //TODO mit for-loop generieren
                
                
                
                
            VStack{
                
               
                generateCards()
                generateCards()
                generateCards()
                generateCards()
                generateCards()
                generateCards()
                generateCards()
                generateCards()
                    
                
                    
                
                /*
                
                ZStack(alignment: .leading){
                    
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color(.sRGB, red: 150/255, green: 150/255, blue: 150/255, opacity: 0.3), lineWidth: 1)
                        .frame(height: 150)
                        .background(Color.white)
                        .opacity(0.5)
                        .cornerRadius(15)
                    
                    HStack{
                    
                    
                Image(systemName: "fuelpump")
                        .foregroundColor(.white)
                        .font(.system(size: 80))
                        .multilineTextAlignment(.leading)
                        
                        
                Text("2,24€")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    Spacer()
                    
                VStack{
                    
                Text("Entfernung: ")
                        .padding()
                        .foregroundColor(.white)
                    
                Text("Standort: ")
                            .padding()
                            .foregroundColor(.white)
                        
                    }
                    
                }
            }*/
                
          
            }
            
        }.padding()
                
        }
                
            }
            }
        
        
        
    
    }



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                                                                               
        }
    
    }
}




struct ExtractedView: View {
    var body: some View {
        Button(action: {
            print("Yeah boiiii")
        }){
            
            Text("Hallo")
                .foregroundColor(.white)
            //Image(systemName: "line.horizontal.3")
            // .imageScale(.large)
            //.foregroundColor(.white)
            }
        }
    }


