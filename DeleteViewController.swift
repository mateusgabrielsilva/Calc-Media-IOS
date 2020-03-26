//
//  DeleteViewController.swift
//  Calc Media
//
//  Created by Mateus Gabriel on 27/01/2019.
//  Copyright © 2019 Mateus Gabriel. All rights reserved.
//

import UIKit

class DeleteViewController: UIViewController {
    
    @IBAction func btnDelete(_ sender: Any) {
        
        resetDefaults()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Deletar os UserDefaults 
    }
    
    func resetDefaults() {
        let defaults = UserDefaults.standard
        let dictionary = defaults.dictionaryRepresentation()
        dictionary.keys.forEach { key in
            defaults.removeObject(forKey: key)
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
