//
//  UserView.swift
//  iOS Test Assessment
//
//  Created by Shabbir Ahmad on 03/05/24.
//

import SwiftUI

struct UserView: View {
    //MARK: - PROPERTIES
    @State var user : User
    
    //MARK: - BODY
    var body: some View {
 
            HStack(alignment: .center, spacing: 10, content: {
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
                })
                .foregroundColor(.white)
                .padding()
            })
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
            .background(Color.black)
            .cornerRadius(10.0)
            .shadow(color: Color.black.opacity(0.2), radius: 2, x: 0, y: 0)
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
    }
}

//MARK: - PREVIEW
struct UserView_Previews: PreviewProvider {
    static var previews: some View {
        let user = User(userId: 1, id: 1, title: "sunt aut facere repellat provident occaecati excepturi optio reprehenderit", body: "Body")
        UserView(user: user)
            .previewLayout(.fixed(width: 375.0, height: 100.0))
    }
}
