//
//  PersonGenerator.swift
//  Marathon
//
//  Created by Evgeny on 22.07.2021.
//
import Foundation
class PersonGenerator {
    private static let genders = [Gender.male, Gender.female]
private static let maleNames = ["Иван","Петр","Дмитрий","Александр","Владимир","Николай"]
    private static let femaleNames = ["Александра","Ирина","Кристина","Ольга","Анна","Катерина"]
    private static let maleSurnames = ["Иванов","Петров","Дмитриев","Перевалов","Владимиров","Николаев"]
    private static let femaleSurnames = ["Иванова","Петрова","Дмитриева","Александрова","Владимирова","Николаева"]
    private static let malePatronimyc = ["Иванович","Петрович","Дмитриевич","Александрович","Владимирович","Николаевич"]
    private static let femalePatronimyc = ["Ивановна","Петровна","Дмитриевна","Александровна","Владимировна","Николаевна"]

    static func person()->Person{
        var person:Person = Person()
        person.gender = genders[Int.random(in: 0..<1)]
        switch person.gender {
            case .male:
                person.name = maleNames[Int.random(in: 0..<maleNames.count-1)]
                person.surname = maleSurnames[Int.random(in: 0..<maleSurnames.count-1)]
                person.patronymic = malePatronimyc[Int.random(in: 0..<malePatronimyc.count-1)]
            case .female:
                person.name = femaleNames[Int.random(in: 0..<femaleNames.count-1)]
                person.surname = femaleSurnames[Int.random(in: 0..<femaleSurnames.count-1)]
                person.patronymic = femalePatronimyc[Int.random(in: 0..<femalePatronimyc.count-1)]
        }
return person
    }
}