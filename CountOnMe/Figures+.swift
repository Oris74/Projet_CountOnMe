//
//  Figures+.swift
//  CountOnMe
//
//  Created by Laurent Debeaujon on 03/06/2020.
//  Copyright © 2020 Vincent Saluzzo. All rights reserved.
//

import Foundation

extension Figures {
    
    func errorFormulaNotification() {
        let name = Notification.Name(rawValue: "CarryOutError")
        let notification = Notification(name: name)
        NotificationCenter.default.post(notification)
    }
    func errorDivByZeroNotification() {
        let name = Notification.Name(rawValue: "DivByZeroError")
        let notification = Notification(name: name)
        NotificationCenter.default.post(notification)
    }
}
