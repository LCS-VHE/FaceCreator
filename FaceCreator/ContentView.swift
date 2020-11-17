//
//  ContentView.swift
//  FaceCreator
//
//  Created by Vincent He on 2020-09-27.
//

import SwiftUI

func get_request_link(parms:[String]) ->String {
    var url = "http://127.0.0.1:5000/show_img?"
    
    for i in 0..<33{
        if i != 32{
            url += "row\(i)=\(parms[i])&"
        }else {
            url += "row\(i)=\(parms[i])"
        }
    }
    return url
}

func setup_url_parms() -> [String]{
    var urls = [String]()
    
    for _ in 0..<33{
        urls.append("0")
    }
    
    return urls
}
struct ContentView: View {
    @State private var url_parms = setup_url_parms()
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
