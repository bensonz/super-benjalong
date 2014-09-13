//
//  startScreenViewController.swift
//  EventWizard
//
//  Created by Leo Jiang on 9/13/14.
//  Copyright (c) 2014 Benjalong. All rights reserved.
//

import Foundation
import UIKit

class startScreenViewController: UIViewController, FBLoginViewDelegate {
    
        @IBOutlet var Title_label: UILabel!
    
        @IBOutlet var title_image: UIImageView!
    
        @IBOutlet var fbLoginView : FBLoginView!
        
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.fbLoginView.delegate = self
        self.fbLoginView.readPermissions = ["public_profile", "email", "user_friends"]
        
        }
        
        // Facebook Delegate Methods
        
        func loginViewShowingLoggedInUser(loginView : FBLoginView!) {
            //println("User Logged In")
        }
    

        func loginViewFetchedUserInfo(loginView : FBLoginView!, usr: FBGraphUser) {
            //println("User: \(user)");
            //println("User Name: \(user.name)")
            var userEmail = usr.objectForKey("email") as String
            //println("User Email: \(userEmail)")
            
            var friendsRequest: FBRequest = FBRequest.requestForMyFriends();
            
            var login_status: FBRequestConnection = friendsRequest.startWithCompletionHandler{(connection: FBRequestConnection!, result: AnyObject!, error: NSError!) -> Void in
                println("friendsRequest: \(friendsRequest)");
            }
            CONSTANTS().currentUser = user(name: usr.name, profilePic: UIImage(named: "default.png"), friends: [])
        }
    
        
    
        func loginViewShowingLoggedOutUser(loginView : FBLoginView!) {
            //println("User Logged Out")
        }
    
        func loginView(loginView : FBLoginView!, handleError:NSError) {
            println("Error: \(handleError.localizedDescription)")
        }
    
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        switch segue.identifier {
        case "home":
            break
        default:
            break
        }
    }

    
}
