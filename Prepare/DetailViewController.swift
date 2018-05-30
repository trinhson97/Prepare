//
//  DetailViewController.swift
//  Prepare
//
//  Created by Son on 4/18/18.
//  Copyright © 2018 Son. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet weak var savebutton: UIButton!
    
    var name: String?
    
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if name != nil {
            nameTextField.text = name
        }
    }
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        name = nameTextField.text
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
