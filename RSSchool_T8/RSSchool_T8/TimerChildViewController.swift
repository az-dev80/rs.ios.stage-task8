//
//  TimerChildViewController.swift
//  RSSchool_T8
//
//  Created by Albert Zhloba on 19.07.21.
//

import UIKit
struct MyVariables {
    static var yourVariable:Float = 1.00
}
@objc class TimerChildViewController: UIViewController {
    //@objc weak var delegate: TimerChildViewControllerDelegate?
    var timer = Timer()
    //@objc var timerAgain: Float = 1.00
    @objc var myViewCotroller: ViewController = ViewController()
    //@objc public var timerValue: Float = 1.00
    //{ sliderTimer.value }
    @IBOutlet weak var labelTimer: UILabel!
    @IBOutlet weak var sliderTimer: UISlider!
    @IBOutlet weak var saveTimerButton: UIButton!
    @IBOutlet var timerChildVC: UIView!
    @IBAction func saveTimerButtonAction(_ sender: Any) {
        
        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
        //delegate?.getResultTime(theValue: timerValue)
        //print("timerValueSave: ", timerValue)
        //print("sliderTimerVal: ", myViewCotroller.timerValueObj)
        
    }
    @IBAction func sliderAction(_ sender: Any) {
        labelTimer.text = String(format: "%.2f s", sliderTimer.value)
        //timerValue = Float(sliderTimer.value)
        MyVariables.yourVariable = Float(sliderTimer.value)
//        print("timerValue: ", timerValue)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        timerChildVC.clipsToBounds = false
        timerChildVC.layer.cornerRadius = 32.0
        timerChildVC.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        timerChildVC.backgroundColor = UIColor.white
        timerChildVC.layer.shadowColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.25).cgColor
        timerChildVC.layer.shadowRadius = 8.0
        timerChildVC.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        timerChildVC.layer.shadowOpacity = 1.0
        timerChildVC.layer.shadowPath = UIBezierPath(
            roundedRect: timerChildVC.bounds,
            cornerRadius: 32.0).cgPath
        
        saveTimerButton.clipsToBounds = false
        saveTimerButton.layer.cornerRadius = 10.0
        saveTimerButton.backgroundColor = UIColor.white;
        saveTimerButton.layer.shadowColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.25).cgColor
        saveTimerButton.layer.shadowRadius = 2.0
        saveTimerButton.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        saveTimerButton.layer.shadowOpacity = 1.0;
        saveTimerButton.layer.shadowPath = UIBezierPath(
            roundedRect: saveTimerButton.bounds,
            cornerRadius: 10.0).cgPath
        
        // Do any additional setup after loading the view.
    }
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showDetailSegue" {
//            let navController = segue.destination as? UINavigationController
//            let controller = navController?.topViewController as? ViewController
//            controller?.timerValueObj = sliderTimer.value
//            print("sliderTime: ", sliderTimer.value)
//        }
//    }
    //@objc public func startTimer(){
       // let viewCont = ViewController()
        //var x = 0.000
//        timer = Timer.scheduledTimer(withTimeInterval: 0.01, repeats: true, block: {(timer) in
//            x += 0.001
//            viewCont.image1.strokeEnd = CGFloat(x)
////            if viewCont.image1?.strokeEnd ?? 0 > 1 {
////                timer.invalidate()
////            }
//        })
        
//        timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(timerAction), userInfo: nil, repeats: true)
  //  }
    @objc public func timerAction() {
        myViewCotroller.timerValueObj = MyVariables.yourVariable
        
//
        //let viewCont = ViewController()
//        viewCont.image1?.strokeEnd += 0.001
//        if viewCont.image1?.strokeEnd ?? 0 > 1 {
//            timer.invalidate()
        }
        
//        let image1 = CAShapeLayer()
//        image1.path = ViewController().bezier1A().cgPath
//        image1.strokeColor = UIColor.blue.cgColor
//        image1.fillColor = UIColor.white.cgColor
//        image1.lineWidth = 1.0
//        image1.strokeEnd = 0.01;
//
//        let image2 = CAShapeLayer()
//        image2.path = ViewController().bezier1B().cgPath
//        image2.strokeColor = UIColor.blue.cgColor
//        image2.fillColor = UIColor.white.cgColor
//        image2.lineWidth = 1.0
//
//        let image3 = CAShapeLayer()
//        image3.path = ViewController().bezier1C().cgPath
//        image3.strokeColor = UIColor.blue.cgColor
//        image3.fillColor = UIColor.white.cgColor
//        image3.lineWidth = 1.0
//
//        ViewController().viewCanvas?.layer.addSublayer(image1)
//        ViewController().viewCanvas?.layer.addSublayer(image2)
//        ViewController().viewCanvas?.layer.addSublayer(image3)
//
        //ViewController().imagep?.strokeEnd += 1
        //counter += 1
//           label.text = "\(counter)"
   //    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
