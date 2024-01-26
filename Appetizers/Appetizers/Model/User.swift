//
//  User.swift
//  Appetizers
//
//  Created by Matthew Zbik on 2024-01-26.
//

import Foundation

struct User: Codable {
    var firstName = ""
    var lastName = ""
    var email = ""
    var birthdate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
