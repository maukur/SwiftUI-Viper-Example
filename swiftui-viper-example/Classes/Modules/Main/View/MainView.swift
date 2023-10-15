//
//  MainView.swift
//  swiftui-viper-example
//
//  Created by Artem Tischenko on 10/16/23
//  
//

import SwiftUI

struct MainView: View {
           
    @StateObject var viewState: MainViewState
    
    var body: some View {
        Text("Hello iOS")
    }
}

struct MainPreviews: PreviewProvider {
    static var previews: some View {
        ApplicationViewBuilder.stub.build(view: .main)
    }
}

