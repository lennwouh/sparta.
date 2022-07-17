//
//  API_data.swift
//  sparta.
//
//  Created by Lennox Marten on 04.07.22.
//

import Foundation
import SwiftUI

struct Gas_station: Codable, Identifiable {
    
    let id = UUID()
    var name: String
    var brand: String
    var street: String
    var place: String
    var lat: Float
    var lng: Float
    
    var dist: Float
    var diesel: Float
    var e5: Float
    var e10: Float
    var isOpen: Bool
    var houseNumber: String
    var postCode: Int
 //   var title: String
   // var body: String
    
    
    
}

struct CompleteJSON: Codable {
    var stations: [Gas_station]
}


var testingtesting = ["A","B","C","D"]
 var placeList = ["buttonTitle"]
var buttonTitle = placeList[0]

class API {
    
    @Published var priceListDiesel = [Float]()
    
    
    
    
    @Published var emptyList = []
    
    @Published var test1 = "Test"
    
    
    func getGas_stations(completion: @escaping ([Gas_station]) -> ()) {   //CompletionHandler links this code to UI Interface
        
        
        guard let url = URL(string:
                                "https://creativecommons.tankerkoenig.de/json/list.php?lat=52.521&lng=13.438&rad=1.5&sort=dist&type=all&apikey=00000000-0000-0000-0000-000000000002")
        else { return }      //guard URL in case the URL is empty
        
        URLSession.shared.dataTask(with: url) { [self] (data, _, _) in
            
            
            
            
           
            let completeJSON = try! JSONDecoder().decode(CompleteJSON.self, from: data!)
            
            DispatchQueue.main.async {
                completion(completeJSON.stations)
                print(completeJSON.stations)
            }
                
                for station in completeJSON.stations {
                    self.priceListDiesel.append(station.diesel)
                    print(">-------------------------------------- STATION --------------------------------------<", "Diesel: ", station.diesel, "Marke: ", station.brand, "Straße: ", station.street, "PLZ: ", station.postCode, "Distanz: ", station.dist, "E10: ", station.e10, "E5: ", station.e5, "Hausnumber: ", station.houseNumber, "Ort: ", station.place)
                    
                    placeList.append(station.place)
                    print(placeList)
                    
                                       
                    
                  
                    
                
                }
            
                placeList.remove(at: 0)
                buttonTitle = placeList[0]
                
                while true {
                    buttonTitle = placeList[0]
                 //   print("PLACES: ", self.placeList)
                   // print(testingtesting)
                   
                }
                
                
                
           //     print("THIS IS STATION ONE: ", stationEach)
                
                
                
         
           /*
            print(completeJSON.stations)
            
            
            for station in completeJSON.stations {
                self.priceListDiesel.append(station.diesel)
            }
            
            for station in completeJSON.stations {
                self.brandList.append(station.brand)
            }
            
            print("Preise für Diesel: ", self.priceListDiesel)
            print("Namen der Marken: ", self.brandList)
           */
            
            /*
            for station in completeJSON.stations {
                print(station.diesel)
            }*/
            /*
             DispatchQueue.main.async {
                 completion(completeJSON.stations)
            }*/
            
            
        }
        
        
        .resume()
        
        
        
        
    }
    
  
}

