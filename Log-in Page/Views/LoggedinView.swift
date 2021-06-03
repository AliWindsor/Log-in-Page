//
//  LoginView.swift
//  Log-in Page
//
//  Created by Alicia Windsor on 03/06/2021.
//

import SwiftUI

struct LoggedinView: View {
    @Binding var userName:String
    @Binding var userModelData : UserModelData
    
    var userInformation : UserModel?
    
    var body: some View{
        NavigationView{
            VStack{
                if let items = userInformation{
                    /*Text("\(items.username)'s \(items.type)")
                        .font(.title)
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)*/
      
                    List(items.items, id: \.self){ item in
                                Text(item)
                    }
                    .navigationTitle("\(items.username)'s \(items.type)")
                    //.navigationBarHidden(true)
                }
            }
            //.navigationTitle("Hi")
            //.navigationBarHidden(true)
            //.navigationBarTitleDisplayMode(.inline)
          
        }.onAppear {
            UINavigationBar.appearance().backgroundColor = .blue
        }
        //.navigationBarHidden(true)
        //.navigationTitle("")
     
    }
}
