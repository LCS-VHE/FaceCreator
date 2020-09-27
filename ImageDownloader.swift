//
//  ImageDownloader.swift
//  FaceCreator
//
//  Created by Vincent He on 2020-09-27.
//

import Foundation

class ImageDownloader: ObservableObject {
    @Published var downloadeddata: Data? = nil
    
    // Good stuff
    //https://www.youtube.com/watch?v=3q6jGt7bxeg
    func downloadimage(url: String){
        guard let imageURL =  URL(string: url) else{
            fatalError("Cannot Download") // This might cause error
        }
        
        DispatchQueue.global().async{
            let data = try? Data(contentsOf: imageURL)
            DispatchQueue.main.async{
                self.downloadeddata = data
            }
        }
    }
}
