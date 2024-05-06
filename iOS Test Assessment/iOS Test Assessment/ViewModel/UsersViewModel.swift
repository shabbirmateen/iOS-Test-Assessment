//
//  UsersViewModel.swift
//  iOS Test Assessment
//
//  Created by Shabbir Ahmad on 03/05/24.
//

import Foundation

class UsersViewModel : ObservableObject {
    //MARK: - Properties
    @Published var users : [User] = []
    
    var pageLimit = 10
    var page : Int = 1
    var limitExceed = false
    
    init() {
        getUsers()
    }
    
    //MARK: - PAGINATION
    func loadMoreContent(currentItem item: User){
        if limitExceed == false {
            page += 1
            getUsers()
        }
    }
    
    func isLastItem(_ userList:[User], _ user: User) -> Bool {
        guard !userList.isEmpty else {
            return false
        }
        guard userList.last?.id == user.id else {
            return false
        }
        return true
    }
    
    //MARK: - API CALL
    func getUsers() {
        let apiUrl = "https://jsonplaceholder.typicode.com/posts?_page=\(page)&_limit=\(pageLimit)"
      
        APIManager.shared.apiCall(urlString: apiUrl, resultType: [User].self) { response in
            switch response {
             case .success(let model):
                DispatchQueue.main.async {
                    guard (model?.count ?? 0) > 0 else {
                        self.limitExceed = true
                        return
                    }
                    self.users.append(contentsOf: model ?? [])
                }
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
}
