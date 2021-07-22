//
//  Person.swift
//  Marathon
//
//  Created by Evgeny on 22.07.2021.
//
import Foundation
public enum Gender:String,Codable {
    case male = "мужчина"
    case female = "женщина"
}
public struct Person:Codable {
    public var surname:String = ""
    public var name:String = ""
    public var patronymic:String = ""
    public var gender:Gender = .male
    public init(surname:String,name:String,patronymic:String, gender:Gender){
        self.surname = surname
        self.name = name
        self.patronymic = patronymic
        self.gender = gender
    }
}
