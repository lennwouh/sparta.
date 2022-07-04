//
//  test.swift
//  tanken-app
//
//  Created by Lennox Marten on 27.06.22.
//

import SwiftUI

struct test: View {
    
    @State var searchQuery = ""
    
    var body: some View {
        
        HStack{
            
            Spacer()
        
        
        
            VStack(alignment: .leading){
        Text("Hello, Wrld!")
            
            Text("Hello, World!")
            
            Text("Hello, Wod!")
            
            Text("Hello, World!")
                    .searchable(text: $searchQuery, prompt: "Search")
            
            }
            
        
        }
        
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test()
    }
}
