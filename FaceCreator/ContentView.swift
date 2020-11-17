//
//  ContentView.swift
//  FaceCreator
//
//  Created by Vincent He on 2020-09-27.
//

import SwiftUI

func get_request_link(parms:[String]) ->String {
    var domain_gateway = "http://127.0.0.1:5000/show_img"
    var url = domain_gateway
    
    return "Hello Is This Working"
}

struct ContentView: View {
    @State private var url_parms = ["String"]
    private var num_of_sliders = 33
    
    
    var body: some View {
        NavigationView{
            VStack{
                Text("Welcome To Face Creator")
                Text(get_request_link(parms: self.url_parms))
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
