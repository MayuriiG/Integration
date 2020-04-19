//
//  ViewController.swift
//  FacebookIntegration_Mac
//
//  Created by Mayurii Gajbhiye on 13/01/20.
//  Copyright © 2020 q. All rights reserved.
//

import UIKit
import FacebookLogin
import FacebookCore
import GoogleSignIn

//.................................................................
//1)developer.facebook.com -account formation
//2)create app id- facebook login passwprd
//3)pod install   - pod 'FacebookCore'
//pod 'FacebookShare'
//pod 'FacebookLogin'
//4)9 steps of //https://developers.facebook.com/apps/1511107569048252/fb-login/quickstart/
//5 - app id
//6)bundle id - submission
//7)copy in info plist - source- code from webside
//...................................................................


class ViewController: UIViewController {
   
    
    

    @IBOutlet weak var facebookOutlet: UIButton!
    
    @IBOutlet weak var googleOutlet: UIButton!
    
    @IBOutlet weak var lbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func facebookBtn(_ sender: Any) {
        
        let managerLogin = LoginManager()
        managerLogin.logIn(permissions: [.publicProfile,.email], viewController: self) { (result) in
            
        switch result{
    case.cancelled:
                print("User Cancelled Login Process")//Cancellation
                break
    case.failed(let error):
                   print("User Failed Login Process")//Cancellation
               // print("Login Failed  =\(error.localizedDescription)")
                  //Failed to Load
                
                break
    case.success:
    // case.success(let grantedPermission, let declinePermissions, let  accessToken):
//                print("accessToken ==\(accessToken)")
              print("Successfull")//Successfull Done
              let  vc  = self.storyboard?.instantiateViewController(identifier: "alluarjun")as!AlluArjunViewController
              self.present(vc, animated: true, completion: nil)
            }
            
        }
    }
    
    
//    @IBAction func loginGoogleBtn(_ sender: Any) {
//        //Signout condition
//        if googleOutlet.title(for: .normal) == "Sign Out"{
//            GIDSignIn.sharedInstance()?.signOut()
//            lbl.text = ""
//
//        }else{
//             //Signin condition
//            GIDSignIn.sharedInstance()?.delegate = self
//                   GIDSignIn.sharedInstance()?.signIn()
//
//            let  vcu  = self.storyboard?.instantiateViewController(identifier: "alluarjun")as!AlluArjunViewController
//                        self.present(vcu, animated: true, completion: nil)
//
//        }
//
//    }
 
//  }

}

