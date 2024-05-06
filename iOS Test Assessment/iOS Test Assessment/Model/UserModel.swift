//
//  UserModel.swift
//  iOS Test Assessment
//
//  Created by Shabbir Ahmad on 03/05/24.
//

import Foundation


struct User : Codable, Identifiable{
    var userId : Int = 0
    var id : Int = 0
    var title : String = ""
    var body : String = ""
}
