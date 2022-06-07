//
//  ViewController.swift
//  TestKacktusLib
//
//  Created by Marco di Fresco on 31/05/22.
//

import UIKit
import kacktus_mobile

class ViewController: UIViewController {
    var a: Int = 0
    let req = AuthSocial()
    var out: [FacebookLogin:String]?
    @IBOutlet weak var facebookLoginButton: UIButton!
    @IBOutlet weak var googleLoginButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        facebookButton()
//        LoginManager().logOut()
        //        if let token = AccessToken.current,
        //                !token.isExpired {
        //                print("token: \(token)")
        //            }
        //        else{
        //            print("access token: \(AccessToken.current)")
        //            let loginManager = LoginManager()
        //
        //
        //            loginManager.logIn(permissions: ["public_profile", "email"], viewController: self) { result in
        //                print("result: \(result)")
        //            }
        //        }
    }
    
    @IBAction func facebookLoginButtonTouchUpInside(_ sender: Any) {
//        let fbLoginManager : LoginManager = LoginManager()
//        fbLoginManager.logIn(permissions: ["email"], from: self) { (result, error) in
//            if (error == nil){
//                let fbloginresult : LoginManagerLoginResult = result!
//                let fbloginresultsss: Set<String> = fbloginresult.grantedPermissions
//                let arr = [String](fbloginresultsss)
//                if arr.count > 0 {
//                    if(arr.contains("email"))
//                    {
//                        guard let tokenString = AuthenticationToken.current?.tokenString else {
//                            print(AuthenticationToken.current?.tokenString)
//                            return
//                        }
//                        print("token: \(tokenString)")
//                        self.getFBUserData()
//                        fbLoginManager.logOut()
//                    }
//                }
//            }
//        }
        
        req.facebookLogin(parameters: [.fullName,.mail,.profilePicture], viewController: self) {
            res in
            self.out = res
            self.pushToLogInformation()
        }
        print("fatto")
    }
    
    
    @IBAction func googleLoginButtonTouchUpInside(_ sender: Any) {
        
    }
    
    
    private func pushToLogInformation(){
        let storyboard = UIStoryboard(name: FacebookLogInfoVC.STORYBOARD_NAME, bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: FacebookLogInfoVC.CONTROLLER_NAME) as! FacebookLogInfoVC
        vc.info = self.out
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
//    private func getFBUserData(){
//        var userProfileImage = String()
//        var useremail = String()
//        var userFullName = String()
//        var userID = String()
//
//        if((AccessToken.current) != nil){
//
//                GraphRequest(graphPath: "me", parameters: ["fields": "id, name, first_name,last_name, picture.type(large), email"])
//                    .start(completion: { (connection, result, error) -> Void in
//
//                if (error == nil){
//                    let dict = result as! [String : AnyObject]
//                    print(dict)
//
//                    if let mail = (dict["email"] as? String)
//                    {
//                        useremail = mail
//                    }
//
//                    if let name = (dict["name"] as? String)
//                    {
//                        userFullName = name
//                    }
//
//                    if let id = (dict["id"] as? String)
//                    {
//                        userID = id
//                    }
//
//                    if let pic = dict["picture"] as? NSDictionary
//                    {
//                        let profilePictureObj = pic
//
//                        let datas = profilePictureObj["data"] as! NSDictionary
//                        userProfileImage  = datas["url"] as! String
//                    }
//                    print("userID: \(userID)")
//                    print("useremail: \(useremail)")
//                    print("userFullName: \(userFullName)")
//                    print("userProfileImage: \(userProfileImage)")
//                }
//            })
//        }
//    }
    
    //mail, id utente, token, tutto quello che possiamo avere
    //o altro metodo dopo login di open graph
//    func facebookButton(){
//        let loginButton = FBLoginButton()
//        loginButton.center = view.center
//        loginButton.permissions = ["public_profile", "email"]
//        view.addSubview(loginButton)
//        loginButton.tintColor = .blue
//    }
}

