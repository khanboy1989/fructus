//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Serhan Khan on 20.02.23.
//

import SwiftUI

struct OnBoardingView: View {
    
    //MARK: - PROPERTIES
    var fruits: [Fruit] = fruitsData
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach(fruits[0...5])  { item in
                FruitCardView(fruit: item)
            }//:LOOP
        }//:TAB
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

//MARK: - PREVIEW
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
    }
}
