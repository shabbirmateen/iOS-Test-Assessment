//
//  UserListView.swift
//  iOS Test Assessment
//
//  Created by Shabbir Ahmad on 03/05/24.
//

import SwiftUI

struct UserListView: View {
    
    //MARK:- PROPERTIES
    @StateObject var usersVM = UsersViewModel()
    @State private var isOpenDetailView = false
    
    //MARK:- BODY
    var body: some View {
        NavigationStack{
            ScrollView {
                LazyVStack {
                    ForEach(usersVM.users) { user in
                            UserView(user: user)
                            .onTapGesture {
                                self.isOpenDetailView = true
                            }
                            .onAppear(){
                                self.listItemAppear(user)
                            }.navigationDestination(isPresented: $isOpenDetailView) {
                                DetailView(user: user)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Users")
        }
    }

extension UserListView {
    func listItemAppear(_ user:User) {
        if usersVM.isLastItem(usersVM.users, user) {
            usersVM.loadMoreContent(currentItem: user)
        }
    }

}

#Preview {
    UserListView()
}
