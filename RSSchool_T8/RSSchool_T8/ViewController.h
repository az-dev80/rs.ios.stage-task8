//
//  ViewController.h
//  RSSchool_T8
//
//  Created by Albert Zhloba on 17.07.21.
//

#import <UIKit/UIKit.h>
//#import "RSSchool_T8-Swift.h"
@class TimerChildViewController;
@class PaletteChildViewController;
@class SecondVC;

@interface ViewController : UIViewController 
@property (weak, nonatomic) IBOutlet UIBarButtonItem *drawingsBBI;
@property (weak, nonatomic) IBOutlet UIButton *openPalette;
@property (weak, nonatomic) IBOutlet UIButton *drawButton;
@property (weak, nonatomic) IBOutlet UIButton *openTimerButton;
@property (weak, nonatomic) IBOutlet UIButton *shareButton;
@property (weak, nonatomic) IBOutlet UIView *viewCanvas;
@property (weak, nonatomic) CAShapeLayer *image1;
@property (weak, nonatomic) CAShapeLayer *image2;
@property (weak, nonatomic) CAShapeLayer *image3;
@property (weak, nonatomic) CAShapeLayer *image4;
@property (weak, nonatomic) CAShapeLayer *image5;
@property (weak, nonatomic) CAShapeLayer *image6;
@property (weak, nonatomic) CAShapeLayer *image7;
@property (weak, nonatomic) CAShapeLayer *image8;
@property (weak, nonatomic) CAShapeLayer *image9;
@property (weak, nonatomic) CAShapeLayer *image10;
@property (weak, nonatomic) CAShapeLayer *image11;
@property (weak, nonatomic) CAShapeLayer *image12;
@property (nonatomic) float timerValueObj;
@property (nonatomic) int drawingsValueObj;
@property (nonatomic, strong) PaletteChildViewController *arrayFromOtherClass;
- (IBAction)drawButtonAction:(id)sender;
- (IBAction)shareButtonAction:(id)sender;
- (IBAction)loadSecondVC:(id)sender;
-(void)shadowMaker: (UIButton *)button;
-(UIBezierPath *)bezier1A;
-(UIBezierPath *)bezier1B;
-(UIBezierPath *)bezier1C;
-(UIBezierPath *)bezier2A;
-(UIBezierPath *)bezier2B;
-(UIBezierPath *)bezier2C;
-(UIBezierPath *)bezier3A;
-(UIBezierPath *)bezier3B;
-(UIBezierPath *)bezier3C;
-(UIBezierPath *)bezier4A;
-(UIBezierPath *)bezier4B;
-(UIBezierPath *)bezier4C;
@end

