//
//  templateApp.swift
//  template
//
//  Created by Maria Jose Gaytan Gil on 03/09/24.
//

import SwiftUI
import SwiftData

@main
struct templateApp: App {
    init() {
        let darkerYellow = UIColor(red: 0xF6 / 255.0, green: 0xCD / 255.0, blue: 0x0B / 255.0, alpha: 1.0)
        
        UISegmentedControl.appearance().selectedSegmentTintColor = darkerYellow
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .selected)
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.black], for: .normal)
    }

    var body: some Scene {
        WindowGroup {
            LoginView()
        }
    }
}
