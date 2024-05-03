//
//  UserModel.swift
//  iOS Test Assessment
//
//  Created by Shabbir Ahmad on 03/05/24.
//

import Foundation


struct User : Decodable, Identifiable{
    var userId : Int
    var id : Int
    var title : String
    var body : String
    
}
