//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Charles Michael on 9/28/24.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: Animal
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack (alignment:.center, spacing: 20){
//                HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
//               TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                        
                    )
//                HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
//                GALLERY
//                FACTS
//                DESCRIPTION
                
            } //: VSTACK
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }
    }
}

#Preview {
    let animals: [Animal] = Bundle.main.decode("animals.json")
    AnimalDetailView(animal: animals[0])
}
