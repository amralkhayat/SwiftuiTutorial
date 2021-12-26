//
//  ImageView.swift
//  SwiftuiTutorial
//
//  Created by Amr Saeed on 26/12/2021.
//

import SwiftUI

struct CoverImages: Identifiable {
    let id = UUID()
    let name: String
}

struct ImageView: View {
  
    //MARK: - PROPERTIES
    let coverImages = [CoverImages( name: "cover1")
                       ,CoverImages( name: "cover2")
                       ,CoverImages( name: "cover3")
                       ,CoverImages( name: "cover4")]
    
    //MARK: - BODY
    var body: some View {
     
        TabView {
            ForEach(coverImages){
                Image($0.name)
                    .resizable()
                    .scaledToFill()
              }
     
            
        }//:TABView
        .tabViewStyle(PageTabViewStyle())
        .background(Color.black)
        
    }
}

//MARK: - PREVIEW
struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView().previewLayout(.fixed(width:400, height: 400))
    }
}
