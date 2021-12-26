//
//  ImageSlider.swift
//  SwiftuiTutorial
//
//  Created by Amr Saeed on 26/12/2021.
//

import SwiftUI

struct ImageSlider: View {
    var body: some View {
        NavigationView {
            List {
                ImageView()
                .frame( height: 285)
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .navigationBarTitle("ImageSlider",displayMode: .large)
        
        }
      
    }
}

struct ImageSlider_Previews: PreviewProvider {
    static var previews: some View {
        ImageSlider()
    }
}
