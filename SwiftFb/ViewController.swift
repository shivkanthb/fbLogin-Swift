//
//  ViewController.swift
//  SwiftFb
//
//  Created by shivkanth on 08/01/15.
//  Copyright (c) 2015 shivkanth. All rights reserved.
//

import UIKit

class ViewController: UIViewController, FBLoginViewDelegate {

    @IBOutlet var fbLoginView : FBLoginView!
    
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.fbLoginView.delegate = self
        self.fbLoginView.readPermissions = ["public_profile","email","user_friends"]
    }

    
    //fb delegate methods
    
    func loginViewShowingLoggedInUser(loginView: FBLoginView!) {
        println("User Logged in");
        //println("do segue operations here")
    }
    
    func loginViewFetchedUserInfo(loginView: FBLoginView!, user: FBGraphUser!) {
        
        nameLabel.text = "Hey \(user.name)!"
    
        println("Username: \(user.name)")
        
    }
    
    func loginViewShowingLoggedOutUser(loginView: FBLoginView!) {
        nameLabel.text = ""
        println("User Logged out")
    }
    
    func loginView(loginView: FBLoginView!, handleError error: NSError!) {
        println("Error : \(error.localizedDescription)")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

