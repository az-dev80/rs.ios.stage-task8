//
//  SecondVC.swift
//  RSSchool_T8
//
//  Created by Albert Zhloba on 17.07.21.
//

import UIKit
struct MyVariables2 {
    static var myVariable:Int = 1
}
@objc class SecondVC: UIViewController {
    @objc var myViewCotroller2: ViewController = ViewController()
    @IBOutlet weak var planetButton: UIButton!
    @IBOutlet weak var headButton: UIButton!
    @IBOutlet weak var treeButton: UIButton!
    @IBOutlet weak var landscapeButton: UIButton!
    @IBAction func drawingButtonsAction(_ sender: Any) {
        if (sender as AnyObject).tag == planetButton.tag {
            MyVariables2.myVariable = 1
           
            planetButton.layer.shadowColor = UIColor(red: 0.129, green: 0.69, blue: 0.557, alpha: 1).cgColor
            planetButton.layer.shadowRadius = 3.0
            
            headButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
            headButton.layer.shadowRadius = 2.0
            
            treeButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
            treeButton.layer.shadowRadius = 2.0
            
            landscapeButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
            landscapeButton.layer.shadowRadius = 2.0
        }
        if (sender as AnyObject).tag == headButton.tag {
            MyVariables2.myVariable = 2
            
            planetButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
            planetButton.layer.shadowRadius = 2.0
            
            headButton.layer.shadowColor = UIColor(red: 0.129, green: 0.69, blue: 0.557, alpha: 1).cgColor
            headButton.layer.shadowRadius = 3.0
            
            treeButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
            treeButton.layer.shadowRadius = 2.0
            
            landscapeButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
            landscapeButton.layer.shadowRadius = 2.0
            
        }
        if (sender as AnyObject).tag == treeButton.tag {
            MyVariables2.myVariable = 3
            
            treeButton.layer.shadowColor = UIColor(red: 0.129, green: 0.69, blue: 0.557, alpha: 1).cgColor
            treeButton.layer.shadowRadius = 3.0
            
            planetButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
            planetButton.layer.shadowRadius = 2.0
            
            headButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
            headButton.layer.shadowRadius = 2.0
            
            landscapeButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
            landscapeButton.layer.shadowRadius = 2.0
            
        }
        if (sender as AnyObject).tag == landscapeButton.tag {
            MyVariables2.myVariable = 4
            
            planetButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
            planetButton.layer.shadowRadius = 2.0
            
            headButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
            headButton.layer.shadowRadius = 2.0
            
            treeButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
            treeButton.layer.shadowRadius = 2.0
            
            landscapeButton.layer.shadowColor = UIColor(red: 0.129, green: 0.69, blue: 0.557, alpha: 1).cgColor
            landscapeButton.layer.shadowRadius = 3.0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        planetButton.clipsToBounds = false
        planetButton.layer.cornerRadius = 10.0
        planetButton.backgroundColor = UIColor.white
        planetButton.layer.shadowColor = UIColor(red: 0.129, green: 0.69, blue: 0.557, alpha: 1).cgColor
        planetButton.layer.shadowRadius = 3.0
        planetButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        planetButton.layer.shadowOpacity = 1.0
        planetButton.layer.shadowPath = UIBezierPath(roundedRect: planetButton.bounds, cornerRadius: 10).cgPath;
        
        headButton.clipsToBounds = false
        headButton.layer.cornerRadius = 10.0
        headButton.backgroundColor = UIColor.white
        headButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        headButton.layer.shadowRadius = 2.0
        headButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        headButton.layer.shadowOpacity = 1.0
        headButton.layer.shadowPath = UIBezierPath(roundedRect: headButton.bounds, cornerRadius: 10).cgPath;
        
        treeButton.clipsToBounds = false
        treeButton.layer.cornerRadius = 10.0
        treeButton.backgroundColor = UIColor.white
        treeButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        treeButton.layer.shadowRadius = 2.0
        treeButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        treeButton.layer.shadowOpacity = 1.0
        treeButton.layer.shadowPath = UIBezierPath(roundedRect: treeButton.bounds, cornerRadius: 10).cgPath;
        
        landscapeButton.clipsToBounds = false
        landscapeButton.layer.cornerRadius = 10.0
        landscapeButton.backgroundColor = UIColor.white
        landscapeButton.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        landscapeButton.layer.shadowRadius = 2.0
        landscapeButton.layer.shadowOffset = CGSize(width: 0, height: 0)
        landscapeButton.layer.shadowOpacity = 1.0
        landscapeButton.layer.shadowPath = UIBezierPath(roundedRect: landscapeButton.bounds, cornerRadius: 10).cgPath;
        
        // Do any additional setup after loading the view.
    }
    @objc public func drawingsAction() {
        myViewCotroller2.drawingsValueObj = Int32(MyVariables2.myVariable)
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
