//
//  ContentModel.swift
//  App Store
//
//  Created by Christian on 10/02/25.
//

import SwiftUI

class AppModel: Identifiable {
    var appBackground: String
    var appIcon: String
    var appName: String
    var appDesc: String
    
    init(appBackground: String = "", appIcon: String, appName: String, appDesc: String) {
        self.appBackground = appBackground
        self.appIcon = appIcon
        self.appName = appName
        self.appDesc = appDesc
    }
}
