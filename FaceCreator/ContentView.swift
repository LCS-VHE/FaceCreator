//
//  ContentView.swift
//  FaceCreator
//
//  Created by Vincent He on 2020-09-27.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            NavigationView{
                List{
                    NavigationLink(destination:      URLImage(url:Constans.imageurl)){
                        Text("Random Anime Face")
                    }
                    
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
