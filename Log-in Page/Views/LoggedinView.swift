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
        
            VStack{
                if let items = userInformation{
                
                    Form{
                        List(items.items, id: \.self){ item in
                                    Text(item)
                        }
                    }
                    .navigationTitle("\(items.username)'s \(items.type)")
                    .navigationBarTitleDisplayMode(.inline)
                    
                    .onAppear(perform: {
                        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Arial-BoldMT", size: 25)!]
                    })
                   
                }
  
            }
            .supportedOrientations(.portrait)
        
    }
   
}
