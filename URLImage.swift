//
//  URLImage.swift
//  FaceCreator
//
//  Created by Vincent He on 2020-09-27.
//

import SwiftUI

struct URLImage: View {
    let url:String
    
    @ObservedObject private var imagedownloader = ImageDownloader()
    
    init (url: String ){
        self.url = url
        self.imagedownloader.downloadimage(url: self.url)
    }
    var body: some View{
        if let imageData = self.imagedownloader.downloadeddata{
            let img = UIImage(data: imageData)
            return VStack{
                Image(uiImage: img!).resizable().frame(width:300, height: 300)
            }
        }else{
            return VStack{
                Image("imshow").resizable().frame(width:500, height: 500)
            }
        }
    }
}

struct URLImage_Previews: PreviewProvider {
    static var previews: some View {
        URLImage(url: Constans.imageurl)
    }
}
