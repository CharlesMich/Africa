//
//  CoverImageView.swift
//  Africa
//
//  Created by Charles Michael on 9/25/24.
//

import SwiftUI

struct CoverImageView: View {
//    MARK: - PROPERTIES
    
//    MARK: - BODY
    
    
    var body: some View {
        TabView {
            ForEach(0 ..< 5){ item in
            Image("cover-lion")
                .resizable()
                .scaledToFit()
        } //: LOOP
       
    } //: TAB
        .tabViewStyle(PageTabViewStyle())
}
}

#Preview {
    CoverImageView()
}
