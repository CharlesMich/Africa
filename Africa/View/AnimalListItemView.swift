//
//  AnimalListItemView.swift
//  Africa
//
//  Created by Charles Michael on 9/26/24.
//

import SwiftUI

struct AnimalListItemView: View {
//    MARK: - PROPERTIES
    
    let animal: Animal
    
//    MARK: - BODY
    
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image("lion")
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Lion")
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text("The world's most social felines, lions roam the savannas, and grasslands of the African continent, hunting cooperatibely and raising cubs in prides")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
                
            }
        }
    }
}

struct AnimalListItemView_Previews: PreviewProvider {
    static let animals: [Animal] =
    Bundle.main.decode("animals.json")
}

#Preview {
    
    AnimalListItemView(animal: animals[1])
}
