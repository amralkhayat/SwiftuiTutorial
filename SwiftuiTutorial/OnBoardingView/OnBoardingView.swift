//
//  OnBoardingView.swift
//  SwiftuiTutorial
//
//  Created by Amr Saeed on 26/09/2021.
//

import SwiftUI

struct ImageModel: Identifiable {
    let id = UUID()
    var image: String
}

struct OnBoardingView: View {
    
    //MARK:- Properities
    var boardImageName:[ImageModel] = [ImageModel(image: "Boarding1"),
                                     ImageModel(image: "Boarding2"),
                                     ImageModel(image: "Boarding3")]
 
    //MARK:- Body
    var body: some View {
        
        TabView{
            ForEach(boardImageName) { item in
                BoardingCard(imageName: item.image )
            }//:Loop
       
        }//: TAB
       
        .tabViewStyle(PageTabViewStyle())
        
        //Change pageing dots style
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

//MARK:- Preview
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
