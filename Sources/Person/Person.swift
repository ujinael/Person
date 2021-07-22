//
//  Person.swift
//  Marathon
//
//  Created by Evgeny on 22.07.2021.
//
import Foundation
enum Gender:String,Codable {
    case male = "мужчина"
    case female = "женщина"
}
struct Person:Codable {
    var surname:String = ""
      var name:String = ""
       var patronymic:String = ""
    var gender:Gender = .male
}
