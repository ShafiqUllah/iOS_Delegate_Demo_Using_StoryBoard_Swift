//
//  InternViewController.swift
//  ProtocolAndDelegateDemo
//
//  Created by Shafiq  Ullah on 11/13/23.
//

import UIKit

class InternViewController: UIViewController {
    
    var delegate : ViewController?
    @IBOutlet var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        button.addTarget(self, action: #selector(goBackToPreviousVC), for: .touchUpInside)
    }
    
    @objc func goBackToPreviousVC(){
        print("Hi")
        delegate?.desiredDelegateMethod()
        //self.dismiss(animated: true, completion: nil)
        navigationController?.popViewController(animated: true)
        
        
    }

   

}

protocol InternViewControllerDelegate : AnyObject{
    func desiredDelegateMethod();
}
