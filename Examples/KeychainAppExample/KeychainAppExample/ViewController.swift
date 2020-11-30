//
//  ViewController.swift
//  KeychainAppExample
//
//  Created by Volkov Alexander on 11/30/20.
//  Copyright © 2020 Volkov Alexander. All rights reserved.
//

import UIKit

/// When launched test `Keychain` utility methods
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        testGeneralPassword()
    }

    /// Test general password adding, updating, getting and deleting
    private func testGeneralPassword() {
        let keychainUtility = Keychain(service: "My Keychain")
        
        let key = UUID().uuidString
        
        // Adding
        keychainUtility[key] = "123"
        
        print("Added. Value: \(String(describing: keychainUtility[key]))")
        
        // Updating
        keychainUtility[key] = "abc"
        
        print("Updated. Value: \(String(describing: keychainUtility[key]))")
        
        // Deleting
        keychainUtility[key] = nil
        
        print("Deleted. Value: \(String(describing: keychainUtility[key]))")
    }

}

