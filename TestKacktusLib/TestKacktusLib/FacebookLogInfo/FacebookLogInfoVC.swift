//
//  FacebookLogInfoVC.swift
//  TestKacktusLib
//
//  Created by Marco di Fresco on 06/06/22.
//

import UIKit
import kacktus_mobile

class FacebookLogInfoVC: UIViewController {
    static let STORYBOARD_NAME = "FacebookLogInfo"
    static let CONTROLLER_NAME = "FacebookLogInfoVC"
    
    @IBOutlet weak var infoLabel: UILabel!
    
    var info: [FacebookLogin:String]?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.infoLabel?.text? = ""
        info?.forEach({ (k,v) in
            switch k{
            case .fullName:
                if v != ""{
                    self.infoLabel?.text? += "full name: " + v + "\n\n"
                }
                
            case .mail:
                if v != ""{
                    self.infoLabel?.text? += "mail: " + v + "\n\n"
                }
                
            case .userId:
                if v != ""{
                    self.infoLabel?.text? += "user Id: " + v + "\n\n"
                }
                
            case .authToken:
                if v != ""{
                    self.infoLabel?.text? += "auth Token: " + v + "\n\n"
                }
                
            case .profilePicture:
                if v != ""{
                    self.infoLabel?.text? += "profile Picture: " + v + "\n\n"
                }
            }
        })
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
