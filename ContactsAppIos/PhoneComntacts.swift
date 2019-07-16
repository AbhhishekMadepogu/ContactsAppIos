//
//  PhoneComntacts.swift
//  ContactsAppIos
//
//  Created by MacStudent on 2019-07-16.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
import ContactsUI


class PhoneContact: NSObject {
    
    var name: String?
    var avatarData: Data?
    var phoneNumber: [String] = [String]()
    var email: [String] = [String]()
    var isSelected: Bool = false
    var isInvited = false
    
    override init() {
        super.init()
    }
    
    init(contact: CNContact) {
        name        = contact.givenName + " " + contact.familyName
        avatarData  = contact.thumbnailImageData
        for phone in contact.phoneNumbers {
            phoneNumber.append(phone.value.stringValue)
        }
        for mail in contact.emailAddresses {
            email.append(mail.value as String)
        }
    }
    
    func display()  {
        print("-----------------")
        print("Name : \(String(describing: self.name))")
        for p in self.phoneNumber
        {
            print("Phone : \(p)")
        }
        
        for e in self.email
        {
            print("Email : \(e)")
        }
    }
    
}

