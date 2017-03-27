//
//  ViewController.swift
//  CustomNavBar
//
//  Created by GEORGE QUENTIN on 27/03/2017.
//  Copyright © 2017 LEXI LABS. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {

    @IBOutlet weak var redButton: UIButton! {
        willSet {
            guard let oldButton = redButton, var newButton = newValue else { return }
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
      
        redButton.addTarget(self, action:#selector(redButtonPressed), for: .touchUpInside)
       
        self.navigationItem.rightBarButtonItem = nil
        self.navigationItem.leftBarButtonItem = nil
        
        //self.navigationItem.title = "Page Reading"
        
        //Barbutton with text
        //self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(rightMenuButtonTapped(sender:)))
        
        //BarButton with your own image
        let img = UIImage(named: "addicon")
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: img, style: .plain, target: self, action: #selector(rightMenuButtonTapped(sender:)))
        
        let img2 = UIImage(named: "gameicon")
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: img2, style: .plain, target: self, action: #selector(leftMenuButtonTapped(sender:)))
        
        //BarButton with system image
        //self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(rightMenuButtonTapped(sender:)))
    }
    
    func leftMenuButtonTapped(sender: UIBarButtonItem) {
        print("\nLeft Navigation Bar Item in Red ViewController tapped")
    }
    
    func rightMenuButtonTapped(sender: UIBarButtonItem) {
        print("\nRight Navigation Bar Item Red ViewController tapped")
    }

    func redButtonPressed(sender: UIButton!) {
        print("\nRed button pressed")
        //let blueViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "blueViewController") as! BlueViewController
        //self.present(blueViewController, animated: true, completion: nil)
        
        //self.navigationController?.pushViewController(blueViewController, animated: true)
    }
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
         print("Red segue way sender: ", sender)
         if segue.identifier == "thisSegue" {
            
         }
     }
    
    @IBAction func unwindToRootViewController(segue: UIStoryboardSegue) {
        print("Unwind to Root View Controller")
        
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
        print("Red ViewController: \(NSDate()) before Animations super.viewDidAppear(\(animated))")
        super.viewDidAppear(animated)
        print("Red ViewController: \(NSDate()) after Animations super.viewDidAppear(\(animated))")
        
        
    }
    
    override public func viewDidDisappear(_ animated: Bool) {
        print("Red ViewController: \(NSDate()) before Animations super.viewDidDisappear(\(animated))")
        super.viewDidDisappear(animated)
        print("Red ViewController: \(NSDate()) after Animations super.viewDidDisappear(\(animated))")
    }
    
    override public func viewWillAppear(_ animated: Bool) {
        print("Red View Controller will appear \(animated)")
    }
    override public func viewWillDisappear(_ animated: Bool) {
        print("Red View Controller will disappear \(animated)")
    }
    
    override public func viewDidLayoutSubviews() {
        print("Red View Controller did layout Subviews")
    }
    
    deinit {
        print("🗑 Red View Controller \(#function)")
        
    }
  
    

}

