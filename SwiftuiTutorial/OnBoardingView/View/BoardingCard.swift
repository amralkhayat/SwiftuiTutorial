//
//  BoardingCard.swift
//  SwiftuiTutorial
//
//  Created by Amr Saeed on 26/09/2021.
//

import SwiftUI

struct BoardingCard: View {
    
    //MARK:- Properities
    var imageName: String
    
    //MARK:- Body
    var body: some View {

            VStack {
              //Image
                Image(imageName)
                    
                    .resizable()
                    
                    .scaledToFit()
                
            } //:VStack
        
    }
    
}

//MARK:- Preview
struct BoardingCard_Previews: PreviewProvider {
    
    static var previews: some View {
        
     BoardingCard(imageName: "Boarding1")
            
        .previewLayout(.fixed(width: 320, height: 640))
    }
}
