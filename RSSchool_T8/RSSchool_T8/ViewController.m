//
//  ViewController.m
//  RSSchool_T8
//
//  Created by Albert Zhloba on 17.07.21.
//

#import "ViewController.h"
#import "PaletteChildViewController.h"
#import "RSSchool_T8-Swift.h"

@interface ViewController () {
    NSTimer *timer1;
    float koeff;
    int num;
    int i;
}
@property(nonatomic,strong) SecondVC *secondVC;
@property(nonatomic,strong) TimerChildViewController *timerChildViewController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.drawingsBBI setTitleTextAttributes:@{
        NSFontAttributeName: [UIFont fontWithName:@"Montserrat-Regular" size:17.0]} forState: UIControlStateNormal];
    [self shadowMaker: self.openPalette];
    [self shadowMaker: self.drawButton];
    [self shadowMaker: self.openTimerButton];
    [self shadowMaker: self.shareButton];
    
    self.viewCanvas.clipsToBounds = false;
    self.viewCanvas.layer.cornerRadius = 8.0;
    self.viewCanvas.backgroundColor = [UIColor whiteColor];
    //self.openPalette.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"blue_gradient.jpeg"]];
    self.viewCanvas.layer.shadowColor = [UIColor colorWithRed: 0.0 green: 0.7 blue: 1.0 alpha: 0.25].CGColor;
    self.viewCanvas.layer.shadowRadius = 8.0;
    //self.openPalette.backgroundColor = [UIColor clearColor];
    self.viewCanvas.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    self.viewCanvas.layer.shadowOpacity = 1.0;
    self.viewCanvas.layer.shadowPath = [UIBezierPath
                                   bezierPathWithRoundedRect:self.viewCanvas.bounds cornerRadius:8.0].CGPath;
    
    
//    CAShapeLayer *image1 = [CAShapeLayer layer];
//    image1.path = [self bezier1A].CGPath;
//    image1.strokeColor = [UIColor blueColor].CGColor;
//    image1.fillColor = [UIColor whiteColor].CGColor;
//    image1.lineWidth = 1.0;
//    //image1.position = CGPoint(x: 10, y: 10);
//    CAShapeLayer *image2 = [CAShapeLayer layer];
//    image2.path = [self bezier1B].CGPath;
//    image2.strokeColor = [UIColor blueColor].CGColor;
//    image2.fillColor = [UIColor whiteColor].CGColor;
//    image2.lineWidth = 1.0;
//    //image1.position = CGPoint(x: 10, y: 10);
//    CAShapeLayer *image3 = [CAShapeLayer layer];
//    image3.path = [self bezier1C].CGPath;
//    image3.strokeColor = [UIColor blueColor].CGColor;
//    image3.fillColor = [UIColor whiteColor].CGColor;
//    image3.lineWidth = 1.0;
//    //image1.position = CGPoint(x: 10, y: 10);
//    
//    [self.viewCanvas.layer addSublayer:image1];
//    [self.viewCanvas.layer addSublayer:image2];
//    [self.viewCanvas.layer addSublayer:image3];

    //    self.openPalette.clipsToBounds = false;
    //    self.openPalette.layer.cornerRadius = 10.0;
    //    self.openPalette.backgroundColor = [UIColor whiteColor];
    //    //self.openPalette.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"blue_gradient.jpeg"]];
    //    self.openPalette.layer.shadowColor = [UIColor colorWithRed: 0.0 green: 0.0 blue: 0.0 alpha: 0.25].CGColor;
    //    self.openPalette.layer.shadowRadius = 2.0;
    //    //self.openPalette.backgroundColor = [UIColor clearColor];
    //    self.openPalette.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    //    self.openPalette.layer.shadowOpacity = 1.0;
    //    self.openPalette.layer.shadowPath = [UIBezierPath
    //                                   bezierPathWithRoundedRect:self.openPalette.bounds cornerRadius:10.0].CGPath;
    
}

-(void)shadowMaker: (UIButton *)button{
    button.clipsToBounds = false;
    button.layer.cornerRadius = 10.0;
    button.backgroundColor = [UIColor whiteColor];
    //self.openPalette.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"blue_gradient.jpeg"]];
    button.layer.shadowColor = [UIColor colorWithRed: 0.0 green: 0.0 blue: 0.0 alpha: 0.25].CGColor;
    button.layer.shadowRadius = 2.0;
    //self.openPalette.backgroundColor = [UIColor clearColor];
    button.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    button.layer.shadowOpacity = 1.0;
    button.layer.shadowPath = [UIBezierPath
                               bezierPathWithRoundedRect:button.bounds cornerRadius:10.0].CGPath;
}

- (IBAction)loadSecondVC:(id)sender {
    _secondVC = [[SecondVC alloc] init];
    _secondVC = [self.storyboard instantiateViewControllerWithIdentifier:@"sec"];
    //_secondVC.view.backgroundColor = [UIColor greenColor];
    [self.navigationController pushViewController:_secondVC animated:YES];
}

- (IBAction)shareButtonAction:(id)sender {
}

- (IBAction)drawButtonAction:(id)sender {
    
    if (i == 1){
        self.viewCanvas.layer.sublayers = nil;
        i = 0;
        [self.drawButton setTitle:@"Draw" forState:UIControlStateNormal];
    }
    else {
        
    SecondVC *mySecondVC = [SecondVC new];
    [mySecondVC drawingsAction];
    num = mySecondVC.myViewCotroller2.drawingsValueObj;
    NSLog(@"valueInt: %i", mySecondVC.myViewCotroller2.drawingsValueObj);
    if (num == 1){
        CAShapeLayer *image4 = [CAShapeLayer layer];
        image4.path = [self bezier2A].CGPath;
        image4.strokeColor = [UIColor blueColor].CGColor;
        image4.fillColor = [UIColor whiteColor].CGColor;
        image4.lineWidth = 1.0;
        self.image4 = image4;
        self.image4.strokeEnd = 0.0;
        
        CAShapeLayer *image5 = [CAShapeLayer layer];
        image5.path = [self bezier2B].CGPath;
        image5.strokeColor = [UIColor blueColor].CGColor;
        image5.fillColor = [UIColor whiteColor].CGColor;
        image5.lineWidth = 1.0;
        self.image5 = image5;
        self.image5.strokeEnd = 0.0;
        
        CAShapeLayer *image6 = [CAShapeLayer layer];
        image6.path = [self bezier2C].CGPath;
        image6.strokeColor = [UIColor blueColor].CGColor;
        image6.fillColor = [UIColor whiteColor].CGColor;
        image6.lineWidth = 1.0;
        self.image6 = image6;
        self.image6.strokeEnd = 0.0;
        
        [self.viewCanvas.layer addSublayer:self.image4];
        [self.viewCanvas.layer addSublayer:self.image5];
        [self.viewCanvas.layer addSublayer:self.image6];
    }
    if (num == 2){
        CAShapeLayer *image7 = [CAShapeLayer layer];
        image7.path = [self bezier3A].CGPath;
        image7.strokeColor = [UIColor blueColor].CGColor;
        image7.fillColor = [UIColor whiteColor].CGColor;
        image7.lineWidth = 1.0;
        self.image7 = image7;
        self.image7.strokeEnd = 0.0;
        
        CAShapeLayer *image8 = [CAShapeLayer layer];
        image8.path = [self bezier3B].CGPath;
        image8.strokeColor = [UIColor blueColor].CGColor;
        image8.fillColor = [UIColor whiteColor].CGColor;
        image8.lineWidth = 1.0;
        self.image8 = image8;
        self.image8.strokeEnd = 0.0;
        
        CAShapeLayer *image9 = [CAShapeLayer layer];
        image9.path = [self bezier3C].CGPath;
        image9.strokeColor = [UIColor blueColor].CGColor;
        image9.fillColor = [UIColor whiteColor].CGColor;
        image9.lineWidth = 1.0;
        self.image9 = image9;
        self.image9.strokeEnd = 0.0;
        
        [self.viewCanvas.layer addSublayer:self.image7];
        [self.viewCanvas.layer addSublayer:self.image8];
        [self.viewCanvas.layer addSublayer:self.image9];
    }
    if (num == 3){
        CAShapeLayer *image1 = [CAShapeLayer layer];
        image1.path = [self bezier1A].CGPath;
        image1.strokeColor = [UIColor blueColor].CGColor;
        image1.fillColor = [UIColor whiteColor].CGColor;
        image1.lineWidth = 1.0;
        self.image1 = image1;
        self.image1.strokeEnd = 0.0;
        
        CAShapeLayer *image2 = [CAShapeLayer layer];
        image2.path = [self bezier1B].CGPath;
        image2.strokeColor = [UIColor blueColor].CGColor;
        image2.fillColor = [UIColor whiteColor].CGColor;
        image2.lineWidth = 1.0;
        self.image2 = image2;
        self.image2.strokeEnd = 0.0;
        
        CAShapeLayer *image3 = [CAShapeLayer layer];
        image3.path = [self bezier1C].CGPath;
        image3.strokeColor = [UIColor blueColor].CGColor;
        image3.fillColor = [UIColor whiteColor].CGColor;
        image3.lineWidth = 1.0;
        self.image3 = image3;
        self.image3.strokeEnd = 0.0;
        
        [self.viewCanvas.layer addSublayer:self.image1];
        [self.viewCanvas.layer addSublayer:self.image2];
        [self.viewCanvas.layer addSublayer:self.image3];
    }
    if (num == 4){
        CAShapeLayer *image10 = [CAShapeLayer layer];
        image10.path = [self bezier4A].CGPath;
        image10.strokeColor = [UIColor blueColor].CGColor;
        image10.fillColor = [UIColor whiteColor].CGColor;
        image10.lineWidth = 1.0;
        self.image10 = image10;
        self.image10.strokeEnd = 0.0;
        
        CAShapeLayer *image11 = [CAShapeLayer layer];
        image11.path = [self bezier4B].CGPath;
        image11.strokeColor = [UIColor blueColor].CGColor;
        image11.fillColor = [UIColor whiteColor].CGColor;
        image11.lineWidth = 1.0;
        self.image11 = image11;
        self.image11.strokeEnd = 0.0;
        
        CAShapeLayer *image12 = [CAShapeLayer layer];
        image12.path = [self bezier4C].CGPath;
        image12.strokeColor = [UIColor blueColor].CGColor;
        image12.fillColor = [UIColor whiteColor].CGColor;
        image12.lineWidth = 1.0;
        self.image12 = image12;
        self.image12.strokeEnd = 0.0;
        
        [self.viewCanvas.layer addSublayer:self.image10];
        [self.viewCanvas.layer addSublayer:self.image11];
        [self.viewCanvas.layer addSublayer:self.image12];
    }
    
    
    //    NSArray *newArrayFromArray;
    //    self.arrayFromOtherClass = [[PaletteChildViewController alloc] init];
    //    newArrayFromArray = [self.arrayFromOtherClass returnFirstClassArray];
    //    NSLog(@"value1: %@", newArrayFromArray);
    
    //PaletteChildViewController *xxxB1 = [PaletteChildViewController new];
    //[xxxB1 returnFirstClassArray];
   // NSArray *newArrayFromArray = [NSArray new];
    //newArrayFromArray = xxxB1.arrData;
    //NSLog(@"value1: %@", xxxB1);
    
    TimerChildViewController *myClassInstance = [TimerChildViewController new];
        [myClassInstance timerAction];
        koeff = 0.01 / myClassInstance.myViewCotroller.timerValueObj;
        NSLog(@"value: %f", myClassInstance.myViewCotroller.timerValueObj);
        
        // myClassInstance.delegate = self;
        //    myClassInstance.timerAgain = self.timerValueObj;
        // NSLog(@"value: %f", self.timerValueObj);
        //   NSLog(@"valuest: %f", myClassInstance.sliderTimer.value);
        //    NSLog(@"valuest: %f", myClassInstance.myViewCotroller.timerValueObj);
        //
        //    [myClassInstance startTimer];
        timer1 = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(timerListener1) userInfo:nil repeats:YES];
        i=1;
        [self.drawButton setTitle:@"Reset" forState:UIControlStateNormal];
        self.drawButton.titleLabel.numberOfLines = 1;
        self.drawButton.titleLabel.adjustsFontSizeToFitWidth = YES;
        self.drawButton.titleLabel.lineBreakMode = NSLineBreakByClipping;
    }
}


-(void)timerListener1{
    NSLog(@"valueList: %i", num);
    if (num == 1){
        self.image4.strokeEnd += koeff;
        self.image5.strokeEnd += koeff;
        self.image6.strokeEnd += koeff;
        if (self.image4.strokeEnd >1 && self.image5.strokeEnd > 1 && self.image6.strokeEnd > 1){
            [timer1 invalidate];
        }
    }
    if (num == 2){
        self.image7.strokeEnd += koeff;
        self.image8.strokeEnd += koeff;
        self.image9.strokeEnd += koeff;
        if (self.image7.strokeEnd >1 && self.image8.strokeEnd > 1 && self.image9.strokeEnd > 1){
            [timer1 invalidate];
        }
    }
    if (num == 3){
        self.image1.strokeEnd += koeff;
        self.image2.strokeEnd += koeff;
        self.image3.strokeEnd += koeff;
        if (self.image1.strokeEnd >1 && self.image2.strokeEnd > 1 && self.image3.strokeEnd > 1){
            [timer1 invalidate];
        }
    }
    if (num == 4){
        self.image10.strokeEnd += koeff;
        self.image11.strokeEnd += koeff;
        self.image12.strokeEnd += koeff;
        if (self.image10.strokeEnd >1 && self.image11.strokeEnd > 1 && self.image12.strokeEnd > 1){
            [timer1 invalidate];
        }
    }
}
-(UIBezierPath *)bezier1A{
    //UIColor* fillColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
    UIBezierPath *bezierPath = [UIBezierPath bezierPath];
    
    [bezierPath moveToPoint:CGPointMake(233.19,85.76)];
    [bezierPath addCurveToPoint:CGPointMake(220.5,62) controlPoint1: CGPointMake(237,68.49) controlPoint2: CGPointMake(229.61,62)];
    [bezierPath addCurveToPoint:CGPointMake(215.97,62.55) controlPoint1: CGPointMake(218.93,62) controlPoint2: CGPointMake(217.41,62.19)];
    [bezierPath addCurveToPoint:CGPointMake(199.5,49) controlPoint1: CGPointMake(215.41,54.99) controlPoint2: CGPointMake(208.25,49)];
    [bezierPath addCurveToPoint:CGPointMake(191.6,50.77) controlPoint1: CGPointMake(196.64,49) controlPoint2: CGPointMake(193.94,49.64)];
    [bezierPath addCurveToPoint:CGPointMake(180.5,47) controlPoint1: CGPointMake(188.67,48.43) controlPoint2: CGPointMake(184.77,47)];
    [bezierPath addCurveToPoint:CGPointMake(175.97,47.55) controlPoint1: CGPointMake(178.93,47) controlPoint2: CGPointMake(177.41,47.19)];
    [bezierPath addCurveToPoint:CGPointMake(159.5,34) controlPoint1: CGPointMake(175.41,39.99) controlPoint2: CGPointMake(168.25,34)];
    [bezierPath addCurveToPoint:CGPointMake(145.59,40.7) controlPoint1: CGPointMake(153.65,34) controlPoint2: CGPointMake(148.52,36.67)];
    [bezierPath addCurveToPoint:CGPointMake(140.5,40) controlPoint1: CGPointMake(143.98,40.25) controlPoint2: CGPointMake(142.28,40)];
    [bezierPath addCurveToPoint:CGPointMake(130.81,42.77) controlPoint1: CGPointMake(136.88,40) controlPoint2: CGPointMake(133.53,41.03)];
    [bezierPath addCurveToPoint:CGPointMake(125.5,42) controlPoint1: CGPointMake(129.14,42.27) controlPoint2: CGPointMake(127.36,42)];
    [bezierPath addCurveToPoint:CGPointMake(111.59,48.7) controlPoint1: CGPointMake(119.65,42) controlPoint2: CGPointMake(114.52,44.67)];
    [bezierPath addCurveToPoint:CGPointMake(106.5,48) controlPoint1: CGPointMake(109.98,48.25) controlPoint2: CGPointMake(108.28,48)];
    [bezierPath addCurveToPoint:CGPointMake(90,62.5) controlPoint1: CGPointMake(97.39,48) controlPoint2: CGPointMake(90,54.49)];
    [bezierPath addCurveToPoint:CGPointMake(90.01,63.02) controlPoint1: CGPointMake(90,62.68) controlPoint2: CGPointMake(90,62.85)];
    [bezierPath addCurveToPoint:CGPointMake(88.59,64.7) controlPoint1: CGPointMake(89.49,63.55) controlPoint2: CGPointMake(89.02,64.11)];
    [bezierPath addCurveToPoint:CGPointMake(83.5,64) controlPoint1: CGPointMake(86.98,64.25) controlPoint2: CGPointMake(85.28,64)];
    [bezierPath addCurveToPoint:CGPointMake(67,78.5) controlPoint1: CGPointMake(74.39,64) controlPoint2: CGPointMake(67,70.49)];
    [bezierPath addCurveToPoint:CGPointMake(68.58,84.71) controlPoint1: CGPointMake(67,80.72) controlPoint2: CGPointMake(67.57,82.83)];
    [bezierPath addCurveToPoint:CGPointMake(66,92.5) controlPoint1: CGPointMake(66.95,86.96) controlPoint2: CGPointMake(66,89.63)];
    [bezierPath addCurveToPoint:CGPointMake(67.19,97.92) controlPoint1: CGPointMake(66,94.42) controlPoint2: CGPointMake(66.42,96.25)];
    [bezierPath addCurveToPoint:CGPointMake(64,106.5) controlPoint1: CGPointMake(65.19,100.33) controlPoint2: CGPointMake(64,103.29)];
    [bezierPath addCurveToPoint:CGPointMake(65.58,112.71) controlPoint1: CGPointMake(64,108.72) controlPoint2: CGPointMake(64.57,110.83)];
    [bezierPath addCurveToPoint:CGPointMake(63,120.5) controlPoint1: CGPointMake(63.95,114.96) controlPoint2: CGPointMake(63,117.63)];
    [bezierPath addCurveToPoint:CGPointMake(79.5,135) controlPoint1: CGPointMake(63,128.51) controlPoint2: CGPointMake(70.39,135)];
    [bezierPath addCurveToPoint:CGPointMake(81.68,134.88) controlPoint1: CGPointMake(80.24,135) controlPoint2: CGPointMake(80.96,134.96)];
    [bezierPath addCurveToPoint:CGPointMake(96.5,143) controlPoint1: CGPointMake(84.36,139.69) controlPoint2: CGPointMake(89.99,143)];
    [bezierPath addCurveToPoint:CGPointMake(104.35,141.26) controlPoint1: CGPointMake(99.34,143) controlPoint2: CGPointMake(102.02,142.37)];
    [bezierPath addCurveToPoint:CGPointMake(119.5,150) controlPoint1: CGPointMake(106.89,146.4) controlPoint2: CGPointMake(112.72,150)];
    [bezierPath addCurveToPoint:CGPointMake(121.68,149.88) controlPoint1: CGPointMake(120.24,150) controlPoint2: CGPointMake(120.96,149.96)];
    [bezierPath addCurveToPoint:CGPointMake(136.5,158) controlPoint1: CGPointMake(124.36,154.69) controlPoint2: CGPointMake(129.99,158)];
    [bezierPath addCurveToPoint:CGPointMake(145,155.93) controlPoint1: CGPointMake(139.61,158) controlPoint2: CGPointMake(142.52,157.24)];
    [bezierPath addCurveToPoint:CGPointMake(149.66,157.6) controlPoint1: CGPointMake(146.43,156.69) controlPoint2: CGPointMake(147.99,157.26)];
    [bezierPath addCurveToPoint:CGPointMake(162.5,163) controlPoint1: CGPointMake(152.68,160.9) controlPoint2: CGPointMake(157.31,163)];
    [bezierPath addCurveToPoint:CGPointMake(170.35,161.26) controlPoint1: CGPointMake(165.34,163) controlPoint2: CGPointMake(168.02,162.37)];
    [bezierPath addCurveToPoint:CGPointMake(185.5,170) controlPoint1: CGPointMake(172.89,166.4) controlPoint2: CGPointMake(178.72,170)];
    [bezierPath addCurveToPoint:CGPointMake(187.68,169.88) controlPoint1: CGPointMake(186.24,170) controlPoint2: CGPointMake(186.96,169.96)];
    [bezierPath addCurveToPoint:CGPointMake(202.5,178) controlPoint1: CGPointMake(190.36,174.69) controlPoint2: CGPointMake(195.99,178)];
    [bezierPath addCurveToPoint:CGPointMake(211,175.93) controlPoint1: CGPointMake(205.61,178) controlPoint2: CGPointMake(208.52,177.24)];
    [bezierPath addCurveToPoint:CGPointMake(219.5,178) controlPoint1: CGPointMake(213.48,177.24) controlPoint2: CGPointMake(216.39,178)];
    [bezierPath addCurveToPoint:CGPointMake(236,163.5) controlPoint1: CGPointMake(228.61,178) controlPoint2: CGPointMake(236,171.51)];
    [bezierPath addCurveToPoint:CGPointMake(235.99,162.99) controlPoint1: CGPointMake(236,163.33) controlPoint2: CGPointMake(236,163.16)];
    [bezierPath addCurveToPoint:CGPointMake(236.5,163) controlPoint1: CGPointMake(236.16,163) controlPoint2: CGPointMake(236.33,163)];
    [bezierPath addCurveToPoint:CGPointMake(245,160.93) controlPoint1: CGPointMake(239.61,163) controlPoint2: CGPointMake(242.52,162.24)];
    [bezierPath addCurveToPoint:CGPointMake(253.5,163) controlPoint1: CGPointMake(247.48,162.24) controlPoint2: CGPointMake(250.39,163)];
    [bezierPath addCurveToPoint:CGPointMake(270,148.5) controlPoint1: CGPointMake(262.61,163) controlPoint2: CGPointMake(270,156.51)];
    [bezierPath addCurveToPoint:CGPointMake(269.66,145.56) controlPoint1: CGPointMake(270,147.49) controlPoint2: CGPointMake(269.88,146.51)];
    [bezierPath addCurveToPoint:CGPointMake(277,133.5) controlPoint1: CGPointMake(274.09,142.96) controlPoint2: CGPointMake(277,138.53)];
    [bezierPath addCurveToPoint:CGPointMake(273.19,124.24) controlPoint1: CGPointMake(277,129.98) controlPoint2: CGPointMake(275.57,126.75)];
    [bezierPath addCurveToPoint:CGPointMake(280,112.5) controlPoint1: CGPointMake(277.32,121.6) controlPoint2: CGPointMake(280,117.33)];
    [bezierPath addCurveToPoint:CGPointMake(263.5,98) controlPoint1: CGPointMake(280,104.49) controlPoint2: CGPointMake(272.61,98)];
    [bezierPath addCurveToPoint:CGPointMake(258.96,98.55) controlPoint1: CGPointMake(261.93,98) controlPoint2: CGPointMake(260.41,98.19)];
    [bezierPath addCurveToPoint:CGPointMake(242.5,85) controlPoint1: CGPointMake(258.41,90.99) controlPoint2: CGPointMake(251.25,85)];
    [bezierPath addCurveToPoint:CGPointMake(234.6,86.77) controlPoint1: CGPointMake(239.64,85) controlPoint2: CGPointMake(236.94,85.64)];
    [bezierPath addCurveToPoint:CGPointMake(233.19,85.76) controlPoint1: CGPointMake(234.15,86.41) controlPoint2: CGPointMake(233.68,86.08)];
    //    [fillColor setFill];
    //    [bezier2Path fill];
    return bezierPath;
}

-(UIBezierPath *)bezier1B{
    //UIColor* strokeColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
    UIBezierPath *bezier2Path = [UIBezierPath bezierPath];
    
    [bezier2Path moveToPoint: CGPointMake(102, 270.5)];
    [bezier2Path addCurveToPoint: CGPointMake(163.5, 207.5) controlPoint1: CGPointMake(121.83, 264.67) controlPoint2: CGPointMake(161.9, 243.9)];
    [bezier2Path addCurveToPoint: CGPointMake(153.5, 160.5) controlPoint1: CGPointMake(165.1, 171.1) controlPoint2: CGPointMake(157.5, 161)];
    [bezier2Path moveToPoint: CGPointMake(245.5, 276)];
    [bezier2Path addCurveToPoint: CGPointMake(192, 247) controlPoint1: CGPointMake(227.17, 275) controlPoint2: CGPointMake(190.8, 267.8)];
    [bezier2Path addCurveToPoint: CGPointMake(203, 188.5) controlPoint1: CGPointMake(193.2, 226.2) controlPoint2: CGPointMake(199.83, 199.33)];
    [bezier2Path addCurveToPoint: CGPointMake(212.5, 176.5) controlPoint1: CGPointMake(205.17, 184.17) controlPoint2: CGPointMake(210.1, 175.7)];
    [bezier2Path moveToPoint: CGPointMake(178.5, 185)];
    [bezier2Path addCurveToPoint: CGPointMake(171, 234) controlPoint1: CGPointMake(177, 200.17) controlPoint2: CGPointMake(173.4, 231.2)];
    [bezier2Path moveToPoint: CGPointMake(183.5, 259.5)];
    [bezier2Path addCurveToPoint: CGPointMake(188.5, 188.5) controlPoint1: CGPointMake(183.5, 251.5) controlPoint2: CGPointMake(182.5, 203)];
    [bezier2Path moveToPoint: CGPointMake(165, 227.5)];
    [bezier2Path addCurveToPoint: CGPointMake(144.5, 256.5) controlPoint1: CGPointMake(152, 246.5) controlPoint2: CGPointMake(150.5, 251)];
    
    //    [strokeColor setStroke];
    //    bezier3Path.lineWidth = 1;
    //    bezier3Path.miterLimit = 4;
    //    bezier3Path.lineCapStyle = kCGLineCapRound;
    //    [bezier3Path stroke];
    return bezier2Path;
}
-(UIBezierPath *)bezier1C{
    //UIColor* strokeColor = [UIColor colorWithRed: 0 green: 0 blue: 0 alpha: 1];
    UIBezierPath *bezier3Path = [UIBezierPath bezierPath];
    
    [bezier3Path moveToPoint: CGPointMake(119.5, 263.5)];
    [bezier3Path addCurveToPoint: CGPointMake(86, 268.81) controlPoint1: CGPointMake(111.5, 255) controlPoint2: CGPointMake(96.4, 255.61)];
    [bezier3Path moveToPoint: CGPointMake(59.5, 275)];
    [bezier3Path addCurveToPoint: CGPointMake(83.5, 268) controlPoint1: CGPointMake(62.83, 271.17) controlPoint2: CGPointMake(72.3, 264.4)];
    [bezier3Path addCurveToPoint: CGPointMake(94, 272) controlPoint1: CGPointMake(94.7, 271.6) controlPoint2: CGPointMake(95.17, 272.17)];
    [bezier3Path moveToPoint: CGPointMake(198, 260.5)];
    [bezier3Path addCurveToPoint: CGPointMake(221.5, 260.5) controlPoint1: CGPointMake(203, 257.73) controlPoint2: CGPointMake(214.7, 253.85)];
    [bezier3Path addCurveToPoint: CGPointMake(226.74, 266.5) controlPoint1: CGPointMake(223.78, 262.73) controlPoint2: CGPointMake(225.48, 264.74)];
    [bezier3Path moveToPoint: CGPointMake(230, 273.5)];
    [bezier3Path addCurveToPoint: CGPointMake(226.74, 266.5) controlPoint1: CGPointMake(230, 272.46) controlPoint2: CGPointMake(229.25, 269.99)];
    [bezier3Path moveToPoint: CGPointMake(226.74, 266.5)];
    [bezier3Path addCurveToPoint: CGPointMake(261.5, 268) controlPoint1: CGPointMake(238.33, 263.33) controlPoint2: CGPointMake(261.5, 259.2)];
    [bezier3Path addCurveToPoint: CGPointMake(244.5, 276) controlPoint1: CGPointMake(261.5, 276.8) controlPoint2: CGPointMake(245.83, 275.17)];
    
    //    [strokeColor setStroke];
    //    bezier4Path.lineWidth = 0.5;
    //    bezier4Path.miterLimit = 4;
    //    bezier4Path.lineCapStyle = kCGLineCapRound;
    //    [bezier4Path stroke];
    return bezier3Path;
}
-(UIBezierPath *)bezier2A{
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(61, 155)];
    [bezierPath addLineToPoint: CGPointMake(52, 159)];
    [bezierPath addLineToPoint: CGPointMake(43, 166)];
    [bezierPath addLineToPoint: CGPointMake(34.5, 174)];
    [bezierPath addLineToPoint: CGPointMake(28.5, 182)];
    [bezierPath addLineToPoint: CGPointMake(26.5, 190)];
    [bezierPath addLineToPoint: CGPointMake(27.5, 198)];
    [bezierPath addLineToPoint: CGPointMake(31.5, 204.5)];
    [bezierPath addLineToPoint: CGPointMake(38.5, 210)];
    [bezierPath addLineToPoint: CGPointMake(49, 214.5)];
    [bezierPath addLineToPoint: CGPointMake(60, 217)];
    [bezierPath addLineToPoint: CGPointMake(71.5, 218)];
    [bezierPath addLineToPoint: CGPointMake(82.5, 218.5)];
    [bezierPath addLineToPoint: CGPointMake(89, 218.3)];
    [bezierPath moveToPoint: CGPointMake(61, 155)];
    [bezierPath addLineToPoint: CGPointMake(61.5, 148)];
    [bezierPath addLineToPoint: CGPointMake(64, 135.5)];
    [bezierPath addLineToPoint: CGPointMake(67.5, 125)];
    [bezierPath addLineToPoint: CGPointMake(72, 113.5)];
    [bezierPath addLineToPoint: CGPointMake(77.5, 105)];
    [bezierPath addLineToPoint: CGPointMake(84.5, 95.5)];
    [bezierPath addLineToPoint: CGPointMake(92.5, 88)];
    [bezierPath addLineToPoint: CGPointMake(100.5, 82.5)];
    [bezierPath addLineToPoint: CGPointMake(109, 77.5)];
    [bezierPath addCurveToPoint: CGPointMake(120.5, 72.5) controlPoint1: CGPointMake(112.67, 76) controlPoint2: CGPointMake(120.1, 72.9)];
    [bezierPath addCurveToPoint: CGPointMake(131.5, 69) controlPoint1: CGPointMake(120.9, 72.1) controlPoint2: CGPointMake(128, 70)];
    [bezierPath addLineToPoint: CGPointMake(148, 67.5)];
    [bezierPath addLineToPoint: CGPointMake(162, 68.5)];
    [bezierPath addLineToPoint: CGPointMake(176, 71)];
    [bezierPath addLineToPoint: CGPointMake(188.5, 76)];
    [bezierPath addLineToPoint: CGPointMake(200.5, 83.5)];
    [bezierPath addLineToPoint: CGPointMake(209, 90.5)];
    [bezierPath addLineToPoint: CGPointMake(216, 97.5)];
    [bezierPath addLineToPoint: CGPointMake(222, 104.5)];
    [bezierPath moveToPoint: CGPointMake(61, 155)];
    [bezierPath addLineToPoint: CGPointMake(61, 161.5)];
    [bezierPath addLineToPoint: CGPointMake(62, 169)];
    [bezierPath moveToPoint: CGPointMake(222, 104.5)];
    [bezierPath addLineToPoint: CGPointMake(231, 103)];
    [bezierPath addLineToPoint: CGPointMake(243, 102.5)];
    [bezierPath addLineToPoint: CGPointMake(254.5, 104)];
    [bezierPath addLineToPoint: CGPointMake(265, 108)];
    [bezierPath addLineToPoint: CGPointMake(272, 113.5)];
    [bezierPath addLineToPoint: CGPointMake(274.5, 121)];
    [bezierPath addLineToPoint: CGPointMake(274, 130)];
    [bezierPath addLineToPoint: CGPointMake(270.5, 138.5)];
    [bezierPath addLineToPoint: CGPointMake(260, 152)];
    [bezierPath addLineToPoint: CGPointMake(251.5, 160.5)];
    [bezierPath addLineToPoint: CGPointMake(238.5, 170.5)];
    [bezierPath addLineToPoint: CGPointMake(235.17, 172.5)];
    [bezierPath moveToPoint: CGPointMake(222, 104.5)];
    [bezierPath addLineToPoint: CGPointMake(225.5, 109.5)];
    [bezierPath addLineToPoint: CGPointMake(228.5, 116)];
    [bezierPath moveToPoint: CGPointMake(62, 169)];
    [bezierPath addLineToPoint: CGPointMake(58, 171.5)];
    [bezierPath addLineToPoint: CGPointMake(54.5, 176)];
    [bezierPath addLineToPoint: CGPointMake(53, 181)];
    [bezierPath addLineToPoint: CGPointMake(53.5, 186)];
    [bezierPath addLineToPoint: CGPointMake(56, 190)];
    [bezierPath addLineToPoint: CGPointMake(61, 193)];
    [bezierPath addLineToPoint: CGPointMake(68.5, 196)];
    [bezierPath addLineToPoint: CGPointMake(71, 196.47)];
    [bezierPath moveToPoint: CGPointMake(62, 169)];
    [bezierPath addLineToPoint: CGPointMake(64.5, 177.5)];
    [bezierPath addLineToPoint: CGPointMake(67, 186)];
    [bezierPath addLineToPoint: CGPointMake(71, 196.47)];
    [bezierPath moveToPoint: CGPointMake(228.5, 116)];
    [bezierPath addLineToPoint: CGPointMake(235, 116)];
    [bezierPath addLineToPoint: CGPointMake(243, 119)];
    [bezierPath addLineToPoint: CGPointMake(246, 123)];
    [bezierPath addLineToPoint: CGPointMake(246.5, 129)];
    [bezierPath addLineToPoint: CGPointMake(245, 134.5)];
    [bezierPath addLineToPoint: CGPointMake(241, 140)];
    [bezierPath addLineToPoint: CGPointMake(237.33, 144)];
    [bezierPath moveToPoint: CGPointMake(228.5, 116)];
    [bezierPath addLineToPoint: CGPointMake(231.5, 123)];
    [bezierPath addLineToPoint: CGPointMake(235.17, 134.5)];
    [bezierPath addLineToPoint: CGPointMake(237.33, 144)];
    [bezierPath moveToPoint: CGPointMake(89, 218.3)];
    [bezierPath addLineToPoint: CGPointMake(99, 218)];
    [bezierPath addLineToPoint: CGPointMake(120, 215.5)];
    [bezierPath addLineToPoint: CGPointMake(137.5, 212)];
    [bezierPath addLineToPoint: CGPointMake(153, 208)];
    [bezierPath addLineToPoint: CGPointMake(172.5, 202)];
    [bezierPath addLineToPoint: CGPointMake(192, 194.5)];
    [bezierPath addLineToPoint: CGPointMake(207.5, 187.5)];
    [bezierPath addLineToPoint: CGPointMake(223.5, 179.5)];
    [bezierPath addLineToPoint: CGPointMake(235.17, 172.5)];
    [bezierPath moveToPoint: CGPointMake(89, 218.3)];
    [bezierPath addLineToPoint: CGPointMake(94, 224)];
    [bezierPath addLineToPoint: CGPointMake(102, 230)];
    [bezierPath addLineToPoint: CGPointMake(111, 234.5)];
    [bezierPath addLineToPoint: CGPointMake(120, 238)];
    [bezierPath addLineToPoint: CGPointMake(131, 241.5)];
    [bezierPath addLineToPoint: CGPointMake(143.5, 243.5)];
    [bezierPath addLineToPoint: CGPointMake(155.5, 243.5)];
    [bezierPath addLineToPoint: CGPointMake(166.5, 242.5)];
    [bezierPath addLineToPoint: CGPointMake(176, 240)];
    [bezierPath addLineToPoint: CGPointMake(183.5, 237)];
    [bezierPath addLineToPoint: CGPointMake(193, 232.5)];
    [bezierPath addLineToPoint: CGPointMake(200.5, 227.5)];
    [bezierPath addLineToPoint: CGPointMake(206.5, 223)];
    [bezierPath addLineToPoint: CGPointMake(214.5, 214.5)];
    [bezierPath addLineToPoint: CGPointMake(222.5, 204.5)];
    [bezierPath addLineToPoint: CGPointMake(228, 195)];
    [bezierPath addLineToPoint: CGPointMake(233, 183)];
    [bezierPath addLineToPoint: CGPointMake(235.17, 172.5)];
    [bezierPath moveToPoint: CGPointMake(237.33, 144)];
    [bezierPath addLineToPoint: CGPointMake(235.5, 146)];
    [bezierPath addLineToPoint: CGPointMake(230.5, 151)];
    [bezierPath addLineToPoint: CGPointMake(224.5, 155.5)];
    [bezierPath addLineToPoint: CGPointMake(217, 160.5)];
    [bezierPath addLineToPoint: CGPointMake(210, 165)];
    [bezierPath addLineToPoint: CGPointMake(203, 169)];
    [bezierPath addLineToPoint: CGPointMake(196, 172.5)];
    [bezierPath addLineToPoint: CGPointMake(187, 177)];
    [bezierPath addLineToPoint: CGPointMake(175.5, 182)];
    [bezierPath addLineToPoint: CGPointMake(164, 186)];
    [bezierPath addLineToPoint: CGPointMake(152, 189.5)];
    [bezierPath addLineToPoint: CGPointMake(140.5, 192.5)];
    [bezierPath addLineToPoint: CGPointMake(128.5, 195)];
    [bezierPath addLineToPoint: CGPointMake(116.5, 197)];
    [bezierPath addLineToPoint: CGPointMake(104.5, 198)];
    [bezierPath addLineToPoint: CGPointMake(93, 198.5)];
    [bezierPath addLineToPoint: CGPointMake(84, 198)];
    [bezierPath addLineToPoint: CGPointMake(76.5, 197.5)];
    [bezierPath addLineToPoint: CGPointMake(71, 196.47)];
    return bezierPath;
}
-(UIBezierPath *)bezier2B{
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(156, 114.5)];
    [bezier2Path addLineToPoint: CGPointMake(162, 111.5)];
    [bezier2Path addLineToPoint: CGPointMake(171.5, 106)];
    [bezier2Path addLineToPoint: CGPointMake(181, 99)];
    [bezier2Path addLineToPoint: CGPointMake(187.5, 92)];
    [bezier2Path addLineToPoint: CGPointMake(191.5, 85)];
    [bezier2Path addLineToPoint: CGPointMake(194, 79)];
    [bezier2Path moveToPoint: CGPointMake(109.5, 93)];
    [bezier2Path addLineToPoint: CGPointMake(102.5, 92.5)];
    [bezier2Path addLineToPoint: CGPointMake(96.5, 90.5)];
    [bezier2Path addLineToPoint: CGPointMake(91.5, 87.5)];
    [bezier2Path moveToPoint: CGPointMake(120, 91.5)];
    [bezier2Path addLineToPoint: CGPointMake(127.5, 89.5)];
    [bezier2Path addLineToPoint: CGPointMake(135.5, 87)];
    [bezier2Path addLineToPoint: CGPointMake(143.5, 82.5)];
    [bezier2Path addCurveToPoint: CGPointMake(151, 77) controlPoint1: CGPointMake(145.83, 80.83) controlPoint2: CGPointMake(150.6, 77.4)];
    [bezier2Path addCurveToPoint: CGPointMake(155.5, 72) controlPoint1: CGPointMake(151.4, 76.6) controlPoint2: CGPointMake(154.17, 73.5)];
    [bezier2Path addLineToPoint: CGPointMake(157.5, 67.5)];
    [bezier2Path moveToPoint: CGPointMake(97.5, 108.5)];
    [bezier2Path addLineToPoint: CGPointMake(102, 109.5)];
    [bezier2Path addLineToPoint: CGPointMake(109.5, 109.5)];
    [bezier2Path addLineToPoint: CGPointMake(117.5, 108.5)];
    [bezier2Path addLineToPoint: CGPointMake(124.5, 107)];
    [bezier2Path addLineToPoint: CGPointMake(133, 105)];
    [bezier2Path moveToPoint: CGPointMake(103, 128)];
    [bezier2Path addCurveToPoint: CGPointMake(107, 127.5) controlPoint1: CGPointMake(103.4, 128) controlPoint2: CGPointMake(105.83, 127.67)];
    [bezier2Path addLineToPoint: CGPointMake(111.5, 127)];
    [bezier2Path addLineToPoint: CGPointMake(115.5, 126)];
    [bezier2Path moveToPoint: CGPointMake(94.5, 127.5)];
    [bezier2Path addLineToPoint: CGPointMake(87, 127)];
    [bezier2Path addLineToPoint: CGPointMake(80, 124.5)];
    [bezier2Path addCurveToPoint: CGPointMake(73.5, 121.5) controlPoint1: CGPointMake(78, 123.5) controlPoint2: CGPointMake(73.9, 121.5)];
    [bezier2Path addCurveToPoint: CGPointMake(69, 119) controlPoint1: CGPointMake(73.1, 121.5) controlPoint2: CGPointMake(70.33, 119.83)];
    [bezier2Path moveToPoint: CGPointMake(86.5, 166.5)];
    [bezier2Path addLineToPoint: CGPointMake(78.5, 165)];
    [bezier2Path addLineToPoint: CGPointMake(69.5, 161.5)];
    [bezier2Path addLineToPoint: CGPointMake(60.5, 156)];
    [bezier2Path moveToPoint: CGPointMake(106.5, 166.5)];
    [bezier2Path addLineToPoint: CGPointMake(112, 166.5)];
    [bezier2Path addLineToPoint: CGPointMake(116.5, 166)];
    [bezier2Path addLineToPoint: CGPointMake(125.5, 164.5)];
    [bezier2Path addLineToPoint: CGPointMake(136, 162)];
    [bezier2Path addLineToPoint: CGPointMake(145.5, 159.5)];
    [bezier2Path addLineToPoint: CGPointMake(155, 156.5)];
    [bezier2Path addLineToPoint: CGPointMake(164.5, 153.5)];
    [bezier2Path addLineToPoint: CGPointMake(174.5, 149)];
    [bezier2Path addLineToPoint: CGPointMake(184, 144.5)];
    [bezier2Path addLineToPoint: CGPointMake(192, 139.5)];
    [bezier2Path addLineToPoint: CGPointMake(198, 135.5)];
    [bezier2Path addLineToPoint: CGPointMake(203.5, 132)];
    [bezier2Path moveToPoint: CGPointMake(212, 124)];
    [bezier2Path addLineToPoint: CGPointMake(216, 119)];
    [bezier2Path addLineToPoint: CGPointMake(219.5, 113)];
    [bezier2Path addLineToPoint: CGPointMake(222.5, 105.5)];
    [bezier2Path moveToPoint: CGPointMake(125.5, 145)];
    [bezier2Path addLineToPoint: CGPointMake(133.5, 143)];
    [bezier2Path addLineToPoint: CGPointMake(146.5, 139)];
    [bezier2Path addLineToPoint: CGPointMake(155, 136)];
    [bezier2Path addLineToPoint: CGPointMake(164, 132)];
    [bezier2Path addLineToPoint: CGPointMake(171.5, 128.5)];
    [bezier2Path addLineToPoint: CGPointMake(178, 125)];
    [bezier2Path moveToPoint: CGPointMake(86.5, 184)];
    [bezier2Path addLineToPoint: CGPointMake(93.5, 184.5)];
    [bezier2Path addLineToPoint: CGPointMake(101, 184.5)];
    [bezier2Path addLineToPoint: CGPointMake(109, 183.5)];
    [bezier2Path moveToPoint: CGPointMake(190.5, 159.5)];
    [bezier2Path addLineToPoint: CGPointMake(196.5, 157.5)];
    [bezier2Path addLineToPoint: CGPointMake(204, 153)];
    [bezier2Path addLineToPoint: CGPointMake(213, 146)];
    [bezier2Path addLineToPoint: CGPointMake(219, 141.5)];
    [bezier2Path addLineToPoint: CGPointMake(223, 137)];
    [bezier2Path moveToPoint: CGPointMake(167, 213.5)];
    [bezier2Path addLineToPoint: CGPointMake(171.5, 212.5)];
    [bezier2Path addLineToPoint: CGPointMake(180.5, 209)];
    [bezier2Path addLineToPoint: CGPointMake(188.5, 205.5)];
    [bezier2Path addLineToPoint: CGPointMake(195, 202.5)];
    [bezier2Path addLineToPoint: CGPointMake(201, 199.5)];
    [bezier2Path addLineToPoint: CGPointMake(203.5, 196.5)];
    [bezier2Path moveToPoint: CGPointMake(208.5, 209)];
    [bezier2Path addLineToPoint: CGPointMake(214.5, 205.5)];
    [bezier2Path addLineToPoint: CGPointMake(220, 201.5)];
    [bezier2Path addLineToPoint: CGPointMake(227.5, 194)];
    [bezier2Path moveToPoint: CGPointMake(198, 215)];
    [bezier2Path addLineToPoint: CGPointMake(190.5, 218.5)];
    [bezier2Path addLineToPoint: CGPointMake(180, 222.5)];
    [bezier2Path addLineToPoint: CGPointMake(170, 226)];
    [bezier2Path addLineToPoint: CGPointMake(159, 229)];
    [bezier2Path addLineToPoint: CGPointMake(148.5, 231.5)];
    [bezier2Path addLineToPoint: CGPointMake(134.5, 233)];
    [bezier2Path addLineToPoint: CGPointMake(121, 233.5)];
    [bezier2Path addLineToPoint: CGPointMake(109.5, 233)];
    return bezier2Path;
}
-(UIBezierPath *)bezier2C{
    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
    [bezier3Path moveToPoint: CGPointMake(252.5, 181)];
    [bezier3Path addLineToPoint: CGPointMake(257.5, 177.5)];
    [bezier3Path addLineToPoint: CGPointMake(264.5, 178)];
    [bezier3Path addLineToPoint: CGPointMake(269, 181.5)];
    [bezier3Path addLineToPoint: CGPointMake(270.5, 186.5)];
    [bezier3Path addLineToPoint: CGPointMake(269.5, 191)];
    [bezier3Path addLineToPoint: CGPointMake(266.5, 195.5)];
    [bezier3Path addLineToPoint: CGPointMake(261.5, 197)];
    [bezier3Path addLineToPoint: CGPointMake(255.5, 196)];
    [bezier3Path addLineToPoint: CGPointMake(251.5, 192)];
    [bezier3Path addLineToPoint: CGPointMake(250, 187)];
    [bezier3Path addLineToPoint: CGPointMake(252.5, 181)];
    [bezier3Path closePath];
    
    [bezier3Path moveToPoint: CGPointMake(240, 211)];
    [bezier3Path addLineToPoint: CGPointMake(242, 209)];
    [bezier3Path addLineToPoint: CGPointMake(244.5, 209)];
    [bezier3Path addLineToPoint: CGPointMake(246.5, 210.5)];
    [bezier3Path addLineToPoint: CGPointMake(247, 213)];
    [bezier3Path addLineToPoint: CGPointMake(246, 215)];
    [bezier3Path addLineToPoint: CGPointMake(243.5, 216)];
    [bezier3Path addLineToPoint: CGPointMake(241, 215.5)];
    [bezier3Path addLineToPoint: CGPointMake(239.5, 213.5)];
    [bezier3Path addLineToPoint: CGPointMake(240, 211)];
    [bezier3Path closePath];
    
    [bezier3Path moveToPoint: CGPointMake(74.5, 242)];
    [bezier3Path addLineToPoint: CGPointMake(76.5, 241)];
    [bezier3Path addLineToPoint: CGPointMake(79.5, 242)];
    [bezier3Path addCurveToPoint: CGPointMake(81, 244.5) controlPoint1: CGPointMake(80, 242.67) controlPoint2: CGPointMake(81, 244.1)];
    [bezier3Path addCurveToPoint: CGPointMake(81, 247.5) controlPoint1: CGPointMake(81, 244.9) controlPoint2: CGPointMake(81.17, 246.83)];
    [bezier3Path addLineToPoint: CGPointMake(78.5, 249)];
    [bezier3Path addLineToPoint: CGPointMake(75, 249)];
    [bezier3Path addLineToPoint: CGPointMake(73.5, 247)];
    [bezier3Path addLineToPoint: CGPointMake(73, 244.5)];
    [bezier3Path addLineToPoint: CGPointMake(74.5, 242)];
    [bezier3Path closePath];
    
    [bezier3Path moveToPoint: CGPointMake(35.5, 76.5)];
    [bezier3Path addCurveToPoint: CGPointMake(41.5, 72) controlPoint1: CGPointMake(37.33, 75) controlPoint2: CGPointMake(41.1, 72)];
    [bezier3Path addLineToPoint: CGPointMake(48, 71)];
    [bezier3Path addLineToPoint: CGPointMake(54.5, 73)];
    [bezier3Path addLineToPoint: CGPointMake(60.5, 80)];
    [bezier3Path addLineToPoint: CGPointMake(61, 89.5)];
    [bezier3Path addLineToPoint: CGPointMake(57, 97)];
    [bezier3Path addLineToPoint: CGPointMake(48.5, 101)];
    [bezier3Path addLineToPoint: CGPointMake(39.5, 99)];
    [bezier3Path addLineToPoint: CGPointMake(33.5, 94.5)];
    [bezier3Path addLineToPoint: CGPointMake(31.5, 85.5)];
    [bezier3Path addLineToPoint: CGPointMake(35.5, 76.5)];
    [bezier3Path closePath];
    
    [bezier3Path moveToPoint: CGPointMake(217, 51)];
    [bezier3Path addCurveToPoint: CGPointMake(222.5, 50) controlPoint1: CGPointMake(218, 50.67) controlPoint2: CGPointMake(222.1, 50)];
    [bezier3Path addLineToPoint: CGPointMake(227, 53)];
    [bezier3Path addLineToPoint: CGPointMake(227.5, 58)];
    [bezier3Path addLineToPoint: CGPointMake(225.5, 62)];
    [bezier3Path addLineToPoint: CGPointMake(220.5, 63.5)];
    [bezier3Path addLineToPoint: CGPointMake(215.5, 61)];
    [bezier3Path addLineToPoint: CGPointMake(214, 55.5)];
    [bezier3Path addLineToPoint: CGPointMake(217, 51)];
    [bezier3Path closePath];
    return bezier3Path;
}
-(UIBezierPath *)bezier3A{
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(61.5, 28.04)];
    [bezierPath addLineToPoint: CGPointMake(77, 86.86)];
    [bezierPath addLineToPoint: CGPointMake(89, 109.41)];
    [bezierPath addLineToPoint: CGPointMake(106.5, 128.52)];
    [bezierPath addLineToPoint: CGPointMake(133.5, 150.58)];
    [bezierPath addLineToPoint: CGPointMake(157, 155.97)];
    [bezierPath addLineToPoint: CGPointMake(193, 138.82)];
    [bezierPath addLineToPoint: CGPointMake(220, 109.41)];
    [bezierPath addLineToPoint: CGPointMake(228.5, 97.64)];
    [bezierPath addLineToPoint: CGPointMake(228.5, 75.59)];
    [bezierPath addLineToPoint: CGPointMake(230.5, 49.12)];
    [bezierPath addLineToPoint: CGPointMake(218.5, 39.31)];
    [bezierPath addLineToPoint: CGPointMake(202, 42.25)];
    [bezierPath addLineToPoint: CGPointMake(191, 58.92)];
    [bezierPath addLineToPoint: CGPointMake(189, 81.47)];
    [bezierPath addLineToPoint: CGPointMake(193, 93.72)];
    return bezierPath;
}
-(UIBezierPath *)bezier3B{
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(184, 97.64)];
    [bezier2Path addLineToPoint: CGPointMake(175.5, 96.17)];
    [bezier2Path addLineToPoint: CGPointMake(166, 98.13)];
    [bezier2Path addLineToPoint: CGPointMake(158, 99.11)];
    [bezier2Path addLineToPoint: CGPointMake(148.5, 98.13)];
    [bezier2Path addLineToPoint: CGPointMake(140, 96.66)];
    [bezier2Path addLineToPoint: CGPointMake(133.5, 96.17)];
    [bezier2Path addLineToPoint: CGPointMake(126, 97.64)];
    [bezier2Path addLineToPoint: CGPointMake(121.5, 99.6)];
    [bezier2Path addLineToPoint: CGPointMake(127.5, 102.05)];
    [bezier2Path addLineToPoint: CGPointMake(132, 105.49)];
    [bezier2Path addLineToPoint: CGPointMake(136.5, 110.39)];
    [bezier2Path addLineToPoint: CGPointMake(142.5, 112.84)];
    [bezier2Path addLineToPoint: CGPointMake(150, 113.82)];
    [bezier2Path addLineToPoint: CGPointMake(157, 112.84)];
    [bezier2Path addLineToPoint: CGPointMake(164.5, 113.82)];
    [bezier2Path addLineToPoint: CGPointMake(170.5, 112.84)];
    [bezier2Path addLineToPoint: CGPointMake(177, 108.92)];
    [bezier2Path addLineToPoint: CGPointMake(184, 101.07)];
    [bezier2Path addLineToPoint: CGPointMake(188.5, 95.19)];
    [bezier2Path addLineToPoint: CGPointMake(180.5, 94.21)];
    [bezier2Path addLineToPoint: CGPointMake(171.5, 93.23)];
    [bezier2Path addLineToPoint: CGPointMake(162.5, 91.27)];
    [bezier2Path addLineToPoint: CGPointMake(154, 90.78)];
    [bezier2Path addLineToPoint: CGPointMake(144, 92.25)];
    [bezier2Path addLineToPoint: CGPointMake(135, 94.21)];
    [bezier2Path addLineToPoint: CGPointMake(125, 95.19)];
    [bezier2Path addLineToPoint: CGPointMake(118, 94.7)];
    [bezier2Path addLineToPoint: CGPointMake(127.5, 88.82)];
    [bezier2Path addLineToPoint: CGPointMake(136.5, 82.45)];
    [bezier2Path addLineToPoint: CGPointMake(142.5, 79.02)];
    [bezier2Path addLineToPoint: CGPointMake(147.5, 80.49)];
    [bezier2Path addLineToPoint: CGPointMake(153, 82.45)];
    [bezier2Path addLineToPoint: CGPointMake(159.5, 81.47)];
    [bezier2Path addLineToPoint: CGPointMake(166, 80.49)];
    [bezier2Path addLineToPoint: CGPointMake(171.5, 80.49)];
    [bezier2Path addLineToPoint: CGPointMake(174.5, 82.45)];
    [bezier2Path addLineToPoint: CGPointMake(179.5, 87.35)];
    [bezier2Path addLineToPoint: CGPointMake(187, 91.76)];
    return bezier2Path;
}
-(UIBezierPath *)bezier3C{
    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
    [bezier3Path moveToPoint: CGPointMake(189.5, 100.09)];
    [bezier3Path addLineToPoint: CGPointMake(194, 105.98)];
    [bezier3Path addLineToPoint: CGPointMake(196.5, 112.35)];
    [bezier3Path addLineToPoint: CGPointMake(193, 121.17)];
    [bezier3Path addLineToPoint: CGPointMake(186, 129.5)];
    [bezier3Path addLineToPoint: CGPointMake(177, 136.37)];
    [bezier3Path addLineToPoint: CGPointMake(167.5, 129.5)];
    [bezier3Path addLineToPoint: CGPointMake(157, 125.58)];
    [bezier3Path addLineToPoint: CGPointMake(147.5, 125.58)];
    [bezier3Path addLineToPoint: CGPointMake(135.5, 129.5)];
    [bezier3Path addLineToPoint: CGPointMake(127.5, 138.82)];
    [bezier3Path addLineToPoint: CGPointMake(121, 151.07)];
    [bezier3Path addLineToPoint: CGPointMake(109.5, 144.21)];
    [bezier3Path addLineToPoint: CGPointMake(101.5, 134.41)];
    [bezier3Path addLineToPoint: CGPointMake(93, 125.58)];
    [bezier3Path addLineToPoint: CGPointMake(93, 138.82)];
    [bezier3Path addLineToPoint: CGPointMake(93, 166.76)];
    [bezier3Path addLineToPoint: CGPointMake(93, 183.42)];
    [bezier3Path addLineToPoint: CGPointMake(86, 194.7)];
    [bezier3Path addLineToPoint: CGPointMake(74.5, 203.03)];
    [bezier3Path addLineToPoint: CGPointMake(63.5, 209.89)];
    [bezier3Path addLineToPoint: CGPointMake(81, 216.27)];
    [bezier3Path addLineToPoint: CGPointMake(94.5, 224.6)];
    [bezier3Path addLineToPoint: CGPointMake(105, 238.32)];
    [bezier3Path addLineToPoint: CGPointMake(119, 255.48)];
    [bezier3Path addLineToPoint: CGPointMake(138, 273.13)];
    [bezier3Path addLineToPoint: CGPointMake(157, 279.5)];
    [bezier3Path addLineToPoint: CGPointMake(171, 279.5)];
    [bezier3Path addLineToPoint: CGPointMake(186, 271.66)];
    [bezier3Path addLineToPoint: CGPointMake(199.5, 255.48)];
    [bezier3Path addLineToPoint: CGPointMake(209.5, 234.4)];
    [bezier3Path addLineToPoint: CGPointMake(219, 218.72)];
    [bezier3Path addLineToPoint: CGPointMake(233.5, 212.35)];
    [bezier3Path addLineToPoint: CGPointMake(237, 212.35)];
    [bezier3Path addLineToPoint: CGPointMake(230.5, 197.15)];
    [bezier3Path addLineToPoint: CGPointMake(221, 169.21)];
    [bezier3Path addLineToPoint: CGPointMake(219, 146.66)];
    [bezier3Path addLineToPoint: CGPointMake(219, 123.62)];
    [bezier3Path addLineToPoint: CGPointMake(212, 134.41)];
    [bezier3Path addLineToPoint: CGPointMake(204, 142.25)];
    [bezier3Path addLineToPoint: CGPointMake(196.5, 151.07)];
    [bezier3Path addLineToPoint: CGPointMake(180, 166.76)];
    [bezier3Path addLineToPoint: CGPointMake(170, 180.97)];
    [bezier3Path addLineToPoint: CGPointMake(161.5, 202.05)];
    [bezier3Path addLineToPoint: CGPointMake(158.5, 227.54)];
    [bezier3Path addLineToPoint: CGPointMake(158.5, 255.48)];
    [bezier3Path addLineToPoint: CGPointMake(158.5, 273.13)];
    return bezier3Path;
}
-(UIBezierPath *)bezier4A{
    UIBezierPath* bezierPath = [UIBezierPath bezierPath];
    [bezierPath moveToPoint: CGPointMake(237.35, 135.88)];
    [bezierPath addLineToPoint: CGPointMake(243.09, 144.26)];
    [bezierPath addLineToPoint: CGPointMake(254.12, 155.29)];
    [bezierPath addLineToPoint: CGPointMake(253.24, 140.74)];
    [bezierPath addLineToPoint: CGPointMake(251.03, 127.06)];
    [bezierPath addLineToPoint: CGPointMake(246.62, 115.15)];
    [bezierPath addLineToPoint: CGPointMake(243.09, 107.65)];
    [bezierPath addLineToPoint: CGPointMake(239.56, 101.03)];
    [bezierPath addLineToPoint: CGPointMake(234.26, 93.53)];
    [bezierPath addLineToPoint: CGPointMake(229.85, 93.09)];
    [bezierPath addLineToPoint: CGPointMake(227.65, 93.09)];
    [bezierPath addLineToPoint: CGPointMake(224.12, 93.53)];
    [bezierPath addLineToPoint: CGPointMake(220.59, 94.85)];
    [bezierPath addLineToPoint: CGPointMake(217.5, 93.09)];
    [bezierPath addLineToPoint: CGPointMake(214.85, 92.21)];
    [bezierPath addLineToPoint: CGPointMake(211.32, 93.09)];
    [bezierPath addLineToPoint: CGPointMake(206.91, 93.09)];
    [bezierPath addLineToPoint: CGPointMake(202.94, 94.85)];
    [bezierPath addLineToPoint: CGPointMake(200.29, 93.53)];
    [bezierPath addLineToPoint: CGPointMake(196.76, 92.21)];
    [bezierPath addLineToPoint: CGPointMake(193.24, 92.21)];
    [bezierPath addLineToPoint: CGPointMake(187.06, 92.21)];
    [bezierPath addLineToPoint: CGPointMake(181.32, 92.21)];
    [bezierPath addLineToPoint: CGPointMake(178.68, 93.53)];
    [bezierPath addLineToPoint: CGPointMake(172.94, 92.21)];
    [bezierPath addLineToPoint: CGPointMake(167.65, 92.21)];
    [bezierPath addLineToPoint: CGPointMake(164.12, 91.32)];
    [bezierPath addLineToPoint: CGPointMake(159.26, 93.09)];
    [bezierPath addLineToPoint: CGPointMake(156.18, 91.32)];
    [bezierPath addLineToPoint: CGPointMake(150, 91.32)];
    [bezierPath addLineToPoint: CGPointMake(154.85, 90)];
    [bezierPath addLineToPoint: CGPointMake(157.94, 87.35)];
    [bezierPath addLineToPoint: CGPointMake(159.26, 85.59)];
    [bezierPath addLineToPoint: CGPointMake(161.91, 83.38)];
    [bezierPath addLineToPoint: CGPointMake(164.12, 80.29)];
    [bezierPath addLineToPoint: CGPointMake(167.65, 80.29)];
    [bezierPath addLineToPoint: CGPointMake(174.26, 80.29)];
    [bezierPath addLineToPoint: CGPointMake(179.12, 80.29)];
    [bezierPath addLineToPoint: CGPointMake(183.53, 77.65)];
    [bezierPath addLineToPoint: CGPointMake(185.29, 74.12)];
    [bezierPath addLineToPoint: CGPointMake(191.03, 73.24)];
    [bezierPath addLineToPoint: CGPointMake(194.12, 75.44)];
    [bezierPath addLineToPoint: CGPointMake(197.65, 74.12)];
    [bezierPath addLineToPoint: CGPointMake(201.18, 75.44)];
    [bezierPath addLineToPoint: CGPointMake(202.94, 71.91)];
    [bezierPath addLineToPoint: CGPointMake(206.91, 70.15)];
    [bezierPath addLineToPoint: CGPointMake(212.21, 70.15)];
    [bezierPath addLineToPoint: CGPointMake(202.94, 63.53)];
    [bezierPath addLineToPoint: CGPointMake(191.03, 56.91)];
    [bezierPath addLineToPoint: CGPointMake(175.59, 50.74)];
    [bezierPath addLineToPoint: CGPointMake(157.94, 47.21)];
    [bezierPath addLineToPoint: CGPointMake(144.26, 46.32)];
    [bezierPath addLineToPoint: CGPointMake(129.26, 47.21)];
    [bezierPath addLineToPoint: CGPointMake(114.71, 49.41)];
    [bezierPath addLineToPoint: CGPointMake(103.24, 53.82)];
    [bezierPath addLineToPoint: CGPointMake(93.09, 58.24)];
    [bezierPath addLineToPoint: CGPointMake(97.94, 60.88)];
    [bezierPath addLineToPoint: CGPointMake(101.47, 64.41)];
    [bezierPath addLineToPoint: CGPointMake(104.12, 69.26)];
    [bezierPath addLineToPoint: CGPointMake(104.56, 74.12)];
    [bezierPath addLineToPoint: CGPointMake(101.47, 81.18)];
    [bezierPath addLineToPoint: CGPointMake(96.62, 85.59)];
    [bezierPath addLineToPoint: CGPointMake(93.09, 87.35)];
    [bezierPath addLineToPoint: CGPointMake(89.12, 87.35)];
    [bezierPath addLineToPoint: CGPointMake(82.94, 84.71)];
    [bezierPath addLineToPoint: CGPointMake(78.53, 81.18)];
    [bezierPath addLineToPoint: CGPointMake(75.44, 75.44)];
    [bezierPath addLineToPoint: CGPointMake(75.44, 70.15)];
    [bezierPath addLineToPoint: CGPointMake(64.41, 79.85)];
    [bezierPath addLineToPoint: CGPointMake(56.91, 88.68)];
    [bezierPath addLineToPoint: CGPointMake(50.29, 98.82)];
    [bezierPath addLineToPoint: CGPointMake(45.44, 108.53)];
    [bezierPath addLineToPoint: CGPointMake(44.12, 113.82)];
    [bezierPath addLineToPoint: CGPointMake(47.21, 113.82)];
    [bezierPath addLineToPoint: CGPointMake(50.29, 112.94)];
    [bezierPath addLineToPoint: CGPointMake(56.03, 116.47)];
    [bezierPath addLineToPoint: CGPointMake(61.32, 116.47)];
    [bezierPath addLineToPoint: CGPointMake(66.62, 120.88)];
    [bezierPath addLineToPoint: CGPointMake(69.71, 120)];
    [bezierPath addLineToPoint: CGPointMake(74.12, 122.21)];
    [bezierPath addLineToPoint: CGPointMake(71.91, 123.09)];
    [bezierPath addLineToPoint: CGPointMake(66.62, 124.41)];
    [bezierPath addLineToPoint: CGPointMake(62.21, 123.53)];
    [bezierPath addLineToPoint: CGPointMake(60.44, 124.41)];
    [bezierPath addLineToPoint: CGPointMake(56.91, 124.41)];
    [bezierPath addLineToPoint: CGPointMake(54.26, 124.41)];
    [bezierPath addLineToPoint: CGPointMake(52.5, 126.18)];
    [bezierPath addLineToPoint: CGPointMake(50.74, 125.29)];
    [bezierPath addLineToPoint: CGPointMake(48.97, 125.29)];
    [bezierPath addLineToPoint: CGPointMake(44.12, 123.09)];
    [bezierPath addLineToPoint: CGPointMake(39.26, 125.29)];
    [bezierPath addLineToPoint: CGPointMake(37.06, 132.79)];
    [bezierPath addLineToPoint: CGPointMake(35.29, 155.74)];
    [bezierPath addLineToPoint: CGPointMake(39.26, 182.21)];
    [bezierPath addLineToPoint: CGPointMake(45.44, 176.03)];
    [bezierPath addLineToPoint: CGPointMake(50.29, 172.5)];
    [bezierPath addLineToPoint: CGPointMake(60.44, 161.47)];
    [bezierPath addLineToPoint: CGPointMake(69.71, 151.32)];
    [bezierPath moveToPoint: CGPointMake(237.35, 135.88)];
    [bezierPath addLineToPoint: CGPointMake(227.65, 140.74)];
    [bezierPath moveToPoint: CGPointMake(237.35, 135.88)];
    [bezierPath addLineToPoint: CGPointMake(235.74, 144.26)];
    [bezierPath addLineToPoint: CGPointMake(235.74, 154.41)];
    [bezierPath moveToPoint: CGPointMake(227.65, 140.74)];
    [bezierPath addLineToPoint: CGPointMake(217.5, 120)];
    [bezierPath addLineToPoint: CGPointMake(210, 113.38)];
    [bezierPath addLineToPoint: CGPointMake(202.94, 122.21)];
    [bezierPath addLineToPoint: CGPointMake(193.24, 133.24)];
    [bezierPath addLineToPoint: CGPointMake(189.26, 131.03)];
    [bezierPath addLineToPoint: CGPointMake(174.26, 146.91)];
    [bezierPath addLineToPoint: CGPointMake(161.91, 165)];
    [bezierPath moveToPoint: CGPointMake(227.65, 140.74)];
    [bezierPath addLineToPoint: CGPointMake(231.18, 146.91)];
    [bezierPath addLineToPoint: CGPointMake(235.74, 154.41)];
    [bezierPath moveToPoint: CGPointMake(161.91, 165)];
    [bezierPath addLineToPoint: CGPointMake(154.85, 157.06)];
    [bezierPath addLineToPoint: CGPointMake(136.76, 139.41)];
    [bezierPath addLineToPoint: CGPointMake(130.15, 122.21)];
    [bezierPath addLineToPoint: CGPointMake(126.18, 122.21)];
    [bezierPath addLineToPoint: CGPointMake(120.44, 113.38)];
    [bezierPath moveToPoint: CGPointMake(161.91, 165)];
    [bezierPath addLineToPoint: CGPointMake(161.91, 167.21)];
    [bezierPath addLineToPoint: CGPointMake(165, 170.29)];
    [bezierPath addLineToPoint: CGPointMake(171.4, 176.69)];
    [bezierPath moveToPoint: CGPointMake(120.44, 113.38)];
    [bezierPath addLineToPoint: CGPointMake(110.29, 120.88)];
    [bezierPath addLineToPoint: CGPointMake(107.21, 127.06)];
    [bezierPath addLineToPoint: CGPointMake(97.5, 138.09)];
    [bezierPath addLineToPoint: CGPointMake(92.21, 135.88)];
    [bezierPath moveToPoint: CGPointMake(120.44, 113.38)];
    [bezierPath addLineToPoint: CGPointMake(116.91, 120)];
    [bezierPath addLineToPoint: CGPointMake(115.59, 127.06)];
    [bezierPath moveToPoint: CGPointMake(92.21, 135.88)];
    [bezierPath addLineToPoint: CGPointMake(78.53, 153.53)];
    [bezierPath addLineToPoint: CGPointMake(69.71, 151.32)];
    [bezierPath moveToPoint: CGPointMake(92.21, 135.88)];
    [bezierPath addLineToPoint: CGPointMake(92.21, 146.91)];
    [bezierPath addLineToPoint: CGPointMake(93.97, 157.06)];
    [bezierPath moveToPoint: CGPointMake(69.71, 151.32)];
    [bezierPath addLineToPoint: CGPointMake(72.79, 156.62)];
    [bezierPath addLineToPoint: CGPointMake(74.12, 162.79)];
    [bezierPath addLineToPoint: CGPointMake(74.12, 171.18)];
    [bezierPath addLineToPoint: CGPointMake(78.53, 179.56)];
    [bezierPath moveToPoint: CGPointMake(177.79, 183.09)];
    [bezierPath addLineToPoint: CGPointMake(171.4, 176.69)];
    [bezierPath moveToPoint: CGPointMake(245.74, 172.06)];
    [bezierPath addLineToPoint: CGPointMake(237.35, 157.06)];
    [bezierPath addLineToPoint: CGPointMake(235.74, 154.41)];
    [bezierPath moveToPoint: CGPointMake(171.4, 176.69)];
    [bezierPath addLineToPoint: CGPointMake(183.53, 172.5)];
    [bezierPath addLineToPoint: CGPointMake(184.55, 173.82)];
    [bezierPath moveToPoint: CGPointMake(191.03, 182.21)];
    [bezierPath addLineToPoint: CGPointMake(184.55, 173.82)];
    [bezierPath moveToPoint: CGPointMake(184.55, 173.82)];
    [bezierPath addLineToPoint: CGPointMake(191.03, 171.18)];
    [bezierPath addLineToPoint: CGPointMake(196.76, 173.82)];
    [bezierPath addLineToPoint: CGPointMake(205.59, 179.56)];
    [bezierPath addLineToPoint: CGPointMake(214.85, 183.09)];
    [bezierPath addLineToPoint: CGPointMake(222.35, 189.26)];
    [bezierPath addLineToPoint: CGPointMake(227.65, 190.59)];
    [bezierPath addLineToPoint: CGPointMake(241.32, 201.18)];
    [bezierPath moveToPoint: CGPointMake(112.94, 149.12)];
    [bezierPath addLineToPoint: CGPointMake(112.94, 141.62)];
    [bezierPath addLineToPoint: CGPointMake(114.26, 133.24)];
    return bezierPath;
}
-(UIBezierPath *)bezier4B{
    UIBezierPath* bezier2Path = [UIBezierPath bezierPath];
    [bezier2Path moveToPoint: CGPointMake(48.97, 206.03)];
    [bezier2Path addLineToPoint: CGPointMake(61.76, 206.03)];
    [bezier2Path addLineToPoint: CGPointMake(74.12, 202.94)];
    [bezier2Path addLineToPoint: CGPointMake(89.56, 194.56)];
    [bezier2Path addLineToPoint: CGPointMake(104.56, 190.15)];
    [bezier2Path addLineToPoint: CGPointMake(118.68, 195.88)];
    [bezier2Path addLineToPoint: CGPointMake(129.93, 200.96)];
    [bezier2Path moveToPoint: CGPointMake(141.18, 206.03)];
    [bezier2Path addLineToPoint: CGPointMake(129.93, 200.96)];
    [bezier2Path moveToPoint: CGPointMake(129.93, 200.96)];
    [bezier2Path addLineToPoint: CGPointMake(141.18, 197.65)];
    [bezier2Path addLineToPoint: CGPointMake(150, 198.97)];
    [bezier2Path addLineToPoint: CGPointMake(158.38, 200.96)];
    [bezier2Path addLineToPoint: CGPointMake(170.29, 202.94)];
    [bezier2Path addLineToPoint: CGPointMake(189.71, 209.56)];
    [bezier2Path moveToPoint: CGPointMake(181.32, 211.76)];
    [bezier2Path addLineToPoint: CGPointMake(192.35, 209.56)];
    [bezier2Path addLineToPoint: CGPointMake(201.62, 204.71)];
    [bezier2Path addLineToPoint: CGPointMake(213.97, 204.71)];
    [bezier2Path addLineToPoint: CGPointMake(226.76, 204.71)];
    [bezier2Path addLineToPoint: CGPointMake(244.41, 200.96)];
    [bezier2Path moveToPoint: CGPointMake(67.5, 230.74)];
    [bezier2Path addLineToPoint: CGPointMake(79.85, 230.74)];
    [bezier2Path addLineToPoint: CGPointMake(94.85, 227.65)];
    [bezier2Path addLineToPoint: CGPointMake(109.85, 230.74)];
    [bezier2Path addLineToPoint: CGPointMake(131.47, 233.38)];
    [bezier2Path addLineToPoint: CGPointMake(170.29, 237.35)];
    [bezier2Path moveToPoint: CGPointMake(141.18, 245.74)];
    [bezier2Path addLineToPoint: CGPointMake(161.91, 240.44)];
    [bezier2Path addLineToPoint: CGPointMake(181.32, 230.74)];
    [bezier2Path addLineToPoint: CGPointMake(192.35, 225)];
    [bezier2Path addLineToPoint: CGPointMake(208.68, 225)];
    [bezier2Path addLineToPoint: CGPointMake(228.09, 225)];
    [bezier2Path moveToPoint: CGPointMake(93.53, 251.47)];
    [bezier2Path addLineToPoint: CGPointMake(104.56, 249.26)];
    [bezier2Path addLineToPoint: CGPointMake(126.18, 251.47)];
    [bezier2Path addLineToPoint: CGPointMake(150.88, 252.35)];
    [bezier2Path addLineToPoint: CGPointMake(170.29, 252.35)];
    [bezier2Path addLineToPoint: CGPointMake(189.71, 245.74)];
    [bezier2Path addLineToPoint: CGPointMake(210, 243.53)];
    return bezier2Path;
}
-(UIBezierPath *)bezier4C{
    UIBezierPath* bezier3Path = [UIBezierPath bezierPath];
    [bezier3Path moveToPoint: CGPointMake(108.97, 152.65)];
    [bezier3Path addLineToPoint: CGPointMake(110.74, 158.38)];
    [bezier3Path addLineToPoint: CGPointMake(111.62, 168.09)];
    [bezier3Path addLineToPoint: CGPointMake(109.41, 184.41)];
    [bezier3Path addLineToPoint: CGPointMake(106.32, 199.85)];
    [bezier3Path addLineToPoint: CGPointMake(106.76, 208.24)];
    [bezier3Path addLineToPoint: CGPointMake(109.41, 215.29)];
    [bezier3Path moveToPoint: CGPointMake(113.38, 215.29)];
    [bezier3Path addLineToPoint: CGPointMake(114.26, 205.15)];
    [bezier3Path moveToPoint: CGPointMake(115.15, 201.62)];
    [bezier3Path addLineToPoint: CGPointMake(114.26, 191.03)];
    [bezier3Path addLineToPoint: CGPointMake(113.38, 183.97)];
    [bezier3Path addLineToPoint: CGPointMake(112.5, 177.35)];
    [bezier3Path moveToPoint: CGPointMake(120, 172.5)];
    [bezier3Path addLineToPoint: CGPointMake(121.76, 179.56)];
    [bezier3Path addLineToPoint: CGPointMake(123.09, 188.82)];
    [bezier3Path moveToPoint: CGPointMake(124.41, 180.44)];
    [bezier3Path addLineToPoint: CGPointMake(124.85, 185.74)];
    [bezier3Path addLineToPoint: CGPointMake(127.06, 193.68)];
    [bezier3Path addLineToPoint: CGPointMake(129.26, 198.97)];
    [bezier3Path moveToPoint: CGPointMake(127.94, 188.82)];
    [bezier3Path addLineToPoint: CGPointMake(128.38, 192.79)];
    [bezier3Path addLineToPoint: CGPointMake(131.47, 198.09)];
    [bezier3Path moveToPoint: CGPointMake(139.41, 178.24)];
    [bezier3Path addLineToPoint: CGPointMake(140.29, 184.41)];
    [bezier3Path addLineToPoint: CGPointMake(141.62, 190.59)];
    [bezier3Path addLineToPoint: CGPointMake(143.82, 195.44)];
    [bezier3Path moveToPoint: CGPointMake(146.91, 196.76)];
    [bezier3Path addLineToPoint: CGPointMake(144.26, 191.47)];
    [bezier3Path addLineToPoint: CGPointMake(142.94, 187.06)];
    [bezier3Path addLineToPoint: CGPointMake(142.5, 182.65)];
    [bezier3Path moveToPoint: CGPointMake(140.29, 190.59)];
    [bezier3Path addLineToPoint: CGPointMake(138.53, 185.29)];
    [bezier3Path addLineToPoint: CGPointMake(137.65, 180)];
    [bezier3Path addLineToPoint: CGPointMake(137.21, 172.94)];
    [bezier3Path addLineToPoint: CGPointMake(137.65, 166.76)];
    [bezier3Path moveToPoint: CGPointMake(87.35, 157.5)];
    [bezier3Path addLineToPoint: CGPointMake(85.15, 164.12)];
    [bezier3Path addLineToPoint: CGPointMake(84.26, 170.29)];
    [bezier3Path addLineToPoint: CGPointMake(84.26, 177.35)];
    [bezier3Path moveToPoint: CGPointMake(82.5, 172.5)];
    [bezier3Path addLineToPoint: CGPointMake(82.94, 165.44)];
    [bezier3Path addLineToPoint: CGPointMake(85.15, 157.5)];
    [bezier3Path addLineToPoint: CGPointMake(88.24, 150.88)];
    [bezier3Path moveToPoint: CGPointMake(90.44, 141.18)];
    [bezier3Path addLineToPoint: CGPointMake(86.91, 146.47)];
    [bezier3Path addLineToPoint: CGPointMake(84.26, 151.76)];
    [bezier3Path moveToPoint: CGPointMake(51.62, 177.35)];
    [bezier3Path addLineToPoint: CGPointMake(49.85, 184.41)];
    [bezier3Path addLineToPoint: CGPointMake(47.21, 191.03)];
    [bezier3Path addLineToPoint: CGPointMake(44.56, 195.88)];
    [bezier3Path moveToPoint: CGPointMake(54.26, 177.35)];
    [bezier3Path addLineToPoint: CGPointMake(52.5, 183.97)];
    [bezier3Path addLineToPoint: CGPointMake(49.41, 191.91)];
    [bezier3Path moveToPoint: CGPointMake(55.59, 170.29)];
    [bezier3Path addLineToPoint: CGPointMake(54.71, 175.15)];
    [bezier3Path moveToPoint: CGPointMake(67.5, 158.38)];
    [bezier3Path addLineToPoint: CGPointMake(65.29, 166.76)];
    [bezier3Path moveToPoint: CGPointMake(66.62, 169.41)];
    [bezier3Path addLineToPoint: CGPointMake(65.29, 175.15)];
    [bezier3Path addLineToPoint: CGPointMake(64.85, 181.76)];
    [bezier3Path moveToPoint: CGPointMake(63.97, 171.62)];
    [bezier3Path addLineToPoint: CGPointMake(63.09, 180)];
    [bezier3Path moveToPoint: CGPointMake(72.79, 182.65)];
    [bezier3Path addLineToPoint: CGPointMake(73.24, 187.94)];
    [bezier3Path moveToPoint: CGPointMake(74.56, 188.82)];
    [bezier3Path addLineToPoint: CGPointMake(74.56, 201.62)];
    [bezier3Path moveToPoint: CGPointMake(88.24, 171.62)];
    [bezier3Path addLineToPoint: CGPointMake(88.68, 181.32)];
    [bezier3Path addLineToPoint: CGPointMake(89.56, 188.82)];
    [bezier3Path moveToPoint: CGPointMake(186.62, 142.06)];
    [bezier3Path addLineToPoint: CGPointMake(187.06, 146.03)];
    [bezier3Path addLineToPoint: CGPointMake(189.26, 151.76)];
    [bezier3Path addLineToPoint: CGPointMake(189.74, 153.97)];
    [bezier3Path moveToPoint: CGPointMake(189.26, 164.56)];
    [bezier3Path addLineToPoint: CGPointMake(190.59, 157.94)];
    [bezier3Path addLineToPoint: CGPointMake(189.74, 153.97)];
    [bezier3Path moveToPoint: CGPointMake(190.59, 141.62)];
    [bezier3Path addLineToPoint: CGPointMake(190.15, 146.91)];
    [bezier3Path addLineToPoint: CGPointMake(189.74, 153.97)];
    [bezier3Path moveToPoint: CGPointMake(200.74, 135.44)];
    [bezier3Path addLineToPoint: CGPointMake(198.97, 142.06)];
    [bezier3Path addLineToPoint: CGPointMake(197.21, 148.68)];
    [bezier3Path moveToPoint: CGPointMake(217.06, 144.71)];
    [bezier3Path addLineToPoint: CGPointMake(218.38, 153.09)];
    [bezier3Path addLineToPoint: CGPointMake(223.68, 164.56)];
    [bezier3Path moveToPoint: CGPointMake(198.97, 183.97)];
    [bezier3Path addLineToPoint: CGPointMake(202.94, 190.59)];
    [bezier3Path addLineToPoint: CGPointMake(207.35, 195.44)];
    [bezier3Path moveToPoint: CGPointMake(197.21, 195.88)];
    [bezier3Path addLineToPoint: CGPointMake(192.35, 192.79)];
    [bezier3Path moveToPoint: CGPointMake(241.32, 150.88)];
    [bezier3Path addLineToPoint: CGPointMake(241.32, 153.97)];
    [bezier3Path moveToPoint: CGPointMake(245.29, 153.09)];
    [bezier3Path addLineToPoint: CGPointMake(245.29, 157.5)];
    [bezier3Path addLineToPoint: CGPointMake(247.5, 161.03)];
    [bezier3Path moveToPoint: CGPointMake(123.09, 137.65)];
    [bezier3Path addLineToPoint: CGPointMake(124.85, 146.03)];
    [bezier3Path addLineToPoint: CGPointMake(129.26, 148.68)];
    [bezier3Path addLineToPoint: CGPointMake(131.47, 153.97)];
    [bezier3Path moveToPoint: CGPointMake(210.88, 120.44)];
    [bezier3Path addLineToPoint: CGPointMake(212.65, 123.53)];
    [bezier3Path addLineToPoint: CGPointMake(212.65, 127.06)];
    [bezier3Path moveToPoint: CGPointMake(207.35, 125.74)];
    [bezier3Path addLineToPoint: CGPointMake(206.03, 134.56)];
    [bezier3Path moveToPoint: CGPointMake(214.85, 190.59)];
    [bezier3Path addLineToPoint: CGPointMake(217.06, 191.91)];
    [bezier3Path addLineToPoint: CGPointMake(221.47, 193.68)];
    [bezier3Path addLineToPoint: CGPointMake(228.97, 199.85)];
    [bezier3Path moveToPoint: CGPointMake(158.38, 171.62)];
    [bezier3Path addLineToPoint: CGPointMake(160.59, 177.35)];
    [bezier3Path addLineToPoint: CGPointMake(166.32, 183.97)];
    return bezier3Path;
}

@end
