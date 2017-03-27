//
//  BlueViewController.swift
//  CustomNavBar
//
//  Created by GEORGE QUENTIN on 27/03/2017.
//  Copyright © 2017 LEXI LABS. All rights reserved.
//

import UIKit

class BlueViewController: UIViewController {

    
    @IBOutlet weak var blueButton: UIButton! {
        willSet {
            guard let oldButton = blueButton, var newButton = newValue else { return }
            newButton = oldButton
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        blueButton?.addTarget(self, action:#selector(blueButtonPressed), for: .touchUpInside)
        
        //self.navigationItem.title = "Games"
        self.navigationItem.titleView = UIImageView(image: UIImage(named: "reading"))
        
        self.navigationItem.rightBarButtonItem = nil 
        
        //Barbutton with text
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Back To Reading", style: .plain, target: self, action: #selector(rightMenuButtonTapped(sender:)))
        
    }

    func rightMenuButtonTapped(sender: UIBarButtonItem) {
        print("\nRight Navigation Bar Item in Blue ViewController tapped")
    }
    
    func blueButtonPressed(sender: UIButton!) {
        print("\nBlue button pressed")
        //let redViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "redViewController") as! RedViewController
        //self.present(redViewController, animated: true, completion: nil)
        
        //if let navController = self.navigationController {
        //    navController.popViewController(animated: true)
        //}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        print("Blue segue way sender: ", sender)
        if segue.identifier == "unwindThisSegue" {
            
        }
    }
    

    
    /*
    override public func shouldPerformSegue(withIdentifier identifier: String?, sender: Any?) -> Bool {
        var shouldUnwind = false
        //        if let ident = identifier {
        //            if ident == "unwindThisSegue"  {
        //                shouldUnwind = true
        //            }else{
        //                shouldUnwind = false
        //            }
        //        }
        //        
        return shouldUnwind
    }
     */
    

    
    override public func viewDidAppear(_ animated: Bool) {
        print("Blue ViewController: \(NSDate()) before Animations super.viewDidAppear(\(animated))")
        super.viewDidAppear(animated)
        print("Blue ViewController: \(NSDate()) after Animations super.viewDidAppear(\(animated))")
        
    }
    
    override public func viewDidDisappear(_ animated: Bool) {
        print("Blue ViewController: \(NSDate()) before Animations super.viewDidDisappear(\(animated))")
        super.viewDidDisappear(animated)
        print("Blue ViewController: \(NSDate()) after Animations super.viewDidDisappear(\(animated))")
    }
    
    override public func viewWillAppear(_ animated: Bool) {
        print("Blue View Controller will appear \(animated)")
    }
    override public func viewWillDisappear(_ animated: Bool) {
        print("Blue View Controller will disappear \(animated)")
    }
    
    override public func viewDidLayoutSubviews() {
        print("Blue View Controller did layout Subviews")
    }
    
    deinit {
        print("🗑 Blue View Controller \(#function)")
    }

}
