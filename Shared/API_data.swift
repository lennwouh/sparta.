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
    var name = String()
    var brand = String()
    var street = String()
    var place = String()
    var dist = String()
    var diesel = Float()
    var e5 = Float()
    var e10 = Float()
    var isOpen = Bool()
    var postCode = Int()
    var houseNumber = String()
    
}

class API : ObservableObject{
    @Published var gas_stations = [Gas_station]()
    
    func getGas_stations(completion: @escaping ([Gas_station]) -> ()) {    //CompletionHandler links this code to UI Interface
        guard let url = URL(string:
                                "https://creativecommons.tankerkoenig.de/json/list.php?lat=52.521&lng=13.438&rad=1.5&sort=dist&type=all&apikey=00000000-0000-0000-0000-000000000002")
        else { return }      //guard URL in case the URL is empty
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            let gas_stations = try! JSONDecoder().decode([Gas_station].self, from: data!)
            print(gas_stations)
            
            DispatchQueue.main.async {
                completion(gas_stations)
            }
            
        }
        .resume()
    }
}

