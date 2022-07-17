//
//  test.swift
//  tanken-app
//
//  Created by Lennox Marten on 27.06.22.
//

import SwiftUI

struct test: View {
    
    @State var gas_stations: [Gas_station] = []
    @State var apiData2 = API()
    @State var fuckyoufuckyou = ["Fuck", "you"]
    @State var hoolegan = "FUCK"
    
    
   
    
    
    
    var body: some View {
        
        
        
            
        
        
        
        NavigationView {
            
            HStack{
                
                
                Text(buttonTitle)
                   
            
            Button(hoolegan) {
                
                testingtesting.append("FUCK")
                fuckyoufuckyou.append("bitch")
                print(fuckyoufuckyou)
                print(testingtesting)
                print(placeList)
                print(buttonTitle)
                
            }
            
            Button("uff"){
                hoolegan = "yeah"
            }
            }
            List(gas_stations) { station in
            
                
                Text("piData2.emptyList")
                
                
                
                    
               
                
                
                
                
                
                
                
                
                
                
                
                
                
                    }.onAppear() {
                        API().getGas_stations { (gas_stations) in
                            
                            self.gas_stations = gas_stations
                        }
                    }
        }
        
    }
    
}
        
      


struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
