//
//  ContentView.swift
//  GridDemo
//
//  Created by renupunjabi on 6/11/23.
//

import SwiftUI

struct ContentView: View {
    
    let data = (1...100).map { "Item \($0)" }
    
    var body: some View {
        
        let colomns : [GridItem] = [
//            GridItem(.flexible()),
//            GridItem(.fixed(100)),
//            GridItem(.fixed(100)),

            GridItem(.adaptive(minimum: 130, maximum: 250),spacing: 5, alignment: .center)
        ]
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: colomns) {
                    ForEach(data, id: \.self) { item in
                        NavigationLink {
                            Text(item)
                        } label: {
                            VStack {
                                Text("The due point is 47°F now")
                                Text(item)
                            }
                            .padding()
                            .background(.green)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                        }

                    }
                }
            }
            .navigationTitle("Grids")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
