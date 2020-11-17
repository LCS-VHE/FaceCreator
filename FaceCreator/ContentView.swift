//
//  ContentView.swift
//  FaceCreator
//
//  Created by Vincent He on 2020-09-27.
//

import SwiftUI

func get_request_link(parms:[String]) ->String{
    var domain_gateway = "http://127.0.0.1:5000/show_img"
    
    return "http://127.0.0.1:5000/show_img"
}

struct ContentView: View {
    @State private var url_parms = [String]()
    
    
    var body: some View {
        NavigationView{
            Text("Welcome To Face Creator")
            
            
            .navigationBarTitle("Face Crator")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
