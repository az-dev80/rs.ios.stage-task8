//
//  PaletteChildViewController.h
//  RSSchool_T8
//
//  Created by Albert Zhloba on 18.07.21.
//
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PaletteChildViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *paletteButtonSave;
@property (strong, nonatomic) IBOutlet UIView *paletteChildView;
@property (weak, nonatomic) IBOutlet UIButton *button1;
@property (weak, nonatomic) IBOutlet UIButton *button2;
@property (weak, nonatomic) IBOutlet UIButton *button3;
@property (weak, nonatomic) IBOutlet UIButton *button4;
@property (weak, nonatomic) IBOutlet UIButton *button5;
@property (weak, nonatomic) IBOutlet UIButton *button6;
@property (weak, nonatomic) IBOutlet UIButton *button7;
@property (weak, nonatomic) IBOutlet UIButton *button8;
@property (weak, nonatomic) IBOutlet UIButton *button9;
@property (weak, nonatomic) IBOutlet UIButton *button10;
@property (weak, nonatomic) IBOutlet UIButton *button11;
@property (weak, nonatomic) IBOutlet UIButton *button12;
@property (nonatomic, copy) NSMutableArray *arrData;
- (IBAction)paletteButtonSaveAction:(id)sender;
//-(id)returnFirstClassArray;
@end

NS_ASSUME_NONNULL_END
