//
//  ContentView.swift
//  Fructus
//
//  Created by Serhan Khan on 10.01.23.
//

import SwiftUI

struct ContentView: View {
    //MARK: - PROPERTIES
    var fruits:[Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    //MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { fruit in
                    NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                        FruitRawView(fruit: fruit)
                            .padding(.vertical, 4)
                    }
                    
                }
            }.navigationTitle("Fruits")
                .navigationBarItems(trailing: Button(action: {
                    isShowingSettings = true
                }) {
                    Image(systemName: "slider.horizontal.3")
                }//:BUTTON
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                }//: SHEET
            )
        }//: NAVIGATION
        .navigationViewStyle(.stack)
    }
}

//MARK: - PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
