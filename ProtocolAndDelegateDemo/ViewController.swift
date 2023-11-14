//
//  ViewController.swift
//  ProtocolAndDelegateDemo
//
//  Created by Shafiq  Ullah on 11/13/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var button : UIButton!
    
    @IBOutlet var label : UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
    }

    
    @objc func buttonPressed(){
        let vc = storyboard?.instantiateViewController(withIdentifier: "intern") as! InternViewController
        vc.delegate = self
        navigationController?.pushViewController(vc, animated: true)
    }

}

extension ViewController : InternViewControllerDelegate {
    func desiredDelegateMethod() {
        label.text = "Hello there"
    }
    
    
}

