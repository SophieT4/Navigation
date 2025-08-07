//
//  ContentView.swift
//  Navigation
//
//  Created by Scholar on 8/7/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationStack {
            
            VStack {
                Text("This is the root view 🌳")
                
                NavigationLink(destination:
                                SecondView()){//destination shows what will be on the new view
                    Text("|  Home |")//label content shows to the user the link
                    
                    
                    
                    NavigationLink(destination:
                                    ThirdView()){
                        Text("About  |")
                        
                        
                        NavigationLink(destination: FourthView()) {
                            Text("Contact  |")
                            
                            NavigationLink(destination: FifthView()) {
                                Text("Help  |")
                            }
                        } //End of vstack
                        
                        .navigationTitle("Home 🏡")
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationBarHidden(true)
                    } //End of navigation stack
                }
            }
            
        }
    }
    }
#Preview {
    ContentView()
}
