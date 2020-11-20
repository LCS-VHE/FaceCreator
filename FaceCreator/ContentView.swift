//
//  ContentView.swift
//  FaceCreator
//
//  Created by Vincent He on 2020-09-27.
//

import SwiftUI
import SDWebImageSwiftUI

func get_request_link(parms:[Double]) ->String {
    var url = "https://7f0bd4ac81ce.ngrok.io/show_img?"
    
    for i in 0..<33{
        if i != 32{
            url += "row\(i)=\(parms[i])&"
        }else {
            url += "row\(i)=\(parms[i])"
        }
    }
    return url
}

func setup_url_parms() -> [Double]{
    var urls = [Double]()
    
    for _ in 0..<34{
        urls.append(0)
    }
    
    return urls
}
struct ContentView: View {
    @State private var url_parms = setup_url_parms()
//    @State private var num_of_sliders = 34
    @State private var num_of_sliders:Double = 0
    @State private var request_url = get_request_link(parms: setup_url_parms())
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Text("Welcome To Face Creator")
                    
                    WebImage(url:URL(string:self.request_url)).resizable().frame(width:350, height:350)
                    
                    Button("Show Image"){
                        self.request_url = get_request_link(parms: self.url_parms)
                    }
                    ForEach(0..<34/2){num in
                        HStack{
                            Slider(value: $url_parms[num * 2], in: -10...10 )
                            Slider(value: $url_parms[num * 2 + 1], in: -10...10 )

                        }
                    }
                }
            }
            .navigationTitle("Face Creator")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
