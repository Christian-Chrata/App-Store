//
//  ContentFunction.swift
//  App Store
//
//  Created by Christian on 10/02/25.
//

import SwiftUI

func getTodayDate() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd MMMM"
    
    return dateFormatter.string(from: Date())
}

func getAdsItem() -> AppModel {
    var item: AppModel
    
    item = AppModel(appBackground: "ads", appIcon: "MyWorkout", appName: "MyWorkout", appDesc: "Dailies & Tracking")
    
    return item
}

func getLargeItem() -> AppModel {
    var item: AppModel
    
    item = AppModel(appBackground: "brunomars", appIcon: "appleMusic", appName: "Apple Music", appDesc: "Over 100 million songs.")
    
    return item
}

func getListItems() -> [AppModel] {
    var items: [AppModel]
    
    items = [
        AppModel(appIcon: "zoom", appName: "Zoom Workplace", appDesc: "Al-first collaboration"),
        AppModel(appIcon: "googleSheets", appName: "Google Sheets", appDesc: "Collaborate on Spreadsheets"),
        AppModel(appIcon: "linkedIn", appName: "Linked In: Job Search & News", appDesc: "Network & Find Jobs For Interview"),
        AppModel(appIcon: "traveloka", appName: "Traveloka: Book Hotel & Flight", appDesc: "Flight, hotel & activities"),
        AppModel(appIcon: "camScanner", appName: "CamScanner - PDF Scanner App", appDesc: "Document Scan OCR & Export")
    ]
    
    return items
}
