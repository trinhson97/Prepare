//
//  ViewController.swift
//  Prepare
//
//  Created by Son on 4/18/18.
//  Copyright © 2018 Son. All rights reserved.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet weak var nameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
     
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "passdata" {
            let detailVC = segue.destination as? DetailViewController
            detailVC?.name = nameText.text
        }
    }
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        let vc = unwindSegue.source as? DetailViewController
        nameText.text = vc?.name
    }
    
}

