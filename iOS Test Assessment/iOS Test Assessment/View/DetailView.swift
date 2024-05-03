//
//  DetailView.swift
//  iOS Test Assessment
//
//  Created by Shabbir Ahmad on 03/05/24.
//

import SwiftUI

struct DetailView: View {
    var user : User
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 5, content: {
                HStack{
                    Text("Id :")
                        .fontWeight(.semibold)
                    Text("\(user.id)")
                }
                
                HStack{
                    Text("Title :")
                        .fontWeight(.semibold)
                        .bold()
                    Text("\(user.title)")
                }
                HStack{
                    Text("Body :")
                        .fontWeight(.semibold)
                        .bold()
                    Text("\(user.body)")
                }
                
            })
            .foregroundColor(.white)
            .padding()
        }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .background(Color.black)
            .cornerRadius(10.0)
            .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0, y: 0)
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
    }
}

