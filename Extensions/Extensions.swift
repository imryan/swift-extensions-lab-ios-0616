//
//  Extensions.swift
//  Extensions
//
//  Created by Ryan Cohen on 7/13/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

extension String {
    
    func whisper() -> String {
        return self.lowercaseString
    }
    
    func shout() -> String {
        return self.uppercaseString
    }
    
    var points: Int {
        let vowels: [Character] = ["a", "e", "i", "o", "u"]
        let consonants: [Character] = ["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"]
        
        var vowelCount = 0
        var consonantCount = 0
        
        for letter in self.lowercaseString.characters {
            if (vowels.contains(letter)) {
                vowelCount += 2
            } else if (consonants.contains(letter)) {
                consonantCount += 1
            }
        }
        
        return vowelCount + consonantCount
    }
    
    var pigLatin: String {
        if (self.characters.count == 1) {
            return self
        }
        
        let strings: [String] = self.componentsSeparatedByCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
        var pigLatinString = ""
        
        for var string: String in strings {
            let firstLetter = string.removeAtIndex(startIndex)
            
            string.insert(firstLetter, atIndex: string.endIndex)
            string = string.stringByAppendingString("ay")
            string = string.lowercaseString
            
            pigLatinString = "\(pigLatinString) \(string.uppercaseFirst)"
        }
        
        _ = pigLatinString.removeAtIndex(pigLatinString.startIndex)
        
        return pigLatinString
    }
    
    var unicornLevel: String {
        var unicornString: String = ""
        
        for letter in self.characters {
            if (letter != " ") {
                unicornString = unicornString.stringByAppendingString("🦄")
            }
        }
        
        return unicornString
    }
    
    var first: String {
        return String(self.characters.prefix(1))
    }
    
    var uppercaseFirst: String {
        return first.uppercaseString + String(self.characters.dropFirst())
    }
}

extension Int {
    
    var squared: Int {
        return square()
    }
    
    var halved: Int {
        return half()
    }
    
    func square() -> Int {
        return Int(pow(Double(self), 2))
    }
    
    func half() -> Int {
        return self / 2
    }
    
    func isDivisibleBy(x: Int) -> Bool {
        return (self % x == 0)
    }
}