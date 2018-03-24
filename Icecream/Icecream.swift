//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]
    
    
    
    
    // 2.
    func names(forFlavor: String) -> [String] {
        var nameWhoLikedFlavor: [String] = []
        
        for (name, likeFlavor) in favoriteFlavorsOfIceCream{
            if likeFlavor == forFlavor {
                nameWhoLikedFlavor.append(name)
            }
        }
        return nameWhoLikedFlavor
    }
    
    
    
    
    
    // 3.
    func count(forFlavor: String) -> Int {
        var likedTime = 0
        for (_, likeFlavor) in favoriteFlavorsOfIceCream{
            if likeFlavor == forFlavor {
                likedTime += 1
            }
        }
        return likedTime
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson: String) -> String? {
    
        if let likeFlavor = favoriteFlavorsOfIceCream[forPerson] {
            return likeFlavor
        } else {
            return nil
        }
    
    }
    
    
    // 5.
    func replace(flavor: String, forPerson: String) -> Bool {
        if favoriteFlavorsOfIceCream[forPerson] != nil {
            if (favoriteFlavorsOfIceCream[forPerson] != flavor) {
                favoriteFlavorsOfIceCream[forPerson] = flavor
                return true
            } else {
                return false
            }
        } else {
            return false
        }
    }
    
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = nil
            return true
            
        } else {
            return false
        }
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    
    func add(person: String, withFlavor: String) -> Bool {
    
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = withFlavor
            return true
        } else {
            return false
        }
    
    
    }
    
    
    // 9.
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var likeSentence = ""
        for (index, name) in allNames.enumerated(){
            if index+1 == allNames.count {
                likeSentence = likeSentence + "\(name) likes \(favoriteFlavorsOfIceCream[name]!)"
            } else {
                likeSentence = likeSentence + "\(name) likes \(favoriteFlavorsOfIceCream[name]!)\n"
            }
        }
        return likeSentence
    }
    
    
    
    
    
    
    

}
