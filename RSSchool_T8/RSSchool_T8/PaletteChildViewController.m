//
//  PaletteChildViewController.m
//  RSSchool_T8
//
//  Created by Albert Zhloba on 18.07.21.
//

#import <Foundation/Foundation.h>
#import "PaletteChildViewController.h"
#import <UIKit/UIKit.h>

//#define TIMER_LIFE_IN_SECONDS 5.0
@interface PaletteChildViewController (){
    NSMutableArray <UIButton *> *_array;
    NSTimer *timer;
    //NSTimeInterval _startTime;
}

-(void)palleteButtonAction:(UIButton *)sender;
-(void)shadowMaker: (UIButton *)button;


@end

@implementation PaletteChildViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.paletteChildView.clipsToBounds = false;
    self.paletteChildView.layer.cornerRadius = 32.0;
    self.paletteChildView.layer.maskedCorners = kCALayerMinXMinYCorner | kCALayerMaxXMinYCorner;
    self.paletteChildView.backgroundColor = [UIColor whiteColor];
    self.paletteChildView.layer.shadowColor = [UIColor colorWithRed: 0.0 green: 0.0 blue: 0.0 alpha: 0.25].CGColor;
    self.paletteChildView.layer.shadowRadius = 8.0;
    //self.openPalette.backgroundColor = [UIColor clearColor];
    self.paletteChildView.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    self.paletteChildView.layer.shadowOpacity = 1.0;
    self.paletteChildView.layer.shadowPath = [UIBezierPath
                                              bezierPathWithRoundedRect:self.view.bounds cornerRadius:32.0].CGPath;
//    self.paletteChildView.layer.shadowPath = [UIBezierPath
//                                              bezierPathWithRoundedRect: self.paletteChildView.bounds byRoundingCorners:(UIRectCornerTopLeft| UIRectCornerTopRight) cornerRadii:CGSizeMake(32, 32)].CGPath;
    
    self.paletteButtonSave.clipsToBounds = false;
    self.paletteButtonSave.layer.cornerRadius = 10.0;
    self.paletteButtonSave.backgroundColor = [UIColor whiteColor];
    //self.openPalette.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"blue_gradient.jpeg"]];
    self.paletteButtonSave.layer.shadowColor = [UIColor colorWithRed: 0.0 green: 0.0 blue: 0.0 alpha: 0.25].CGColor;
    self.paletteButtonSave.layer.shadowRadius = 2.0;
    //self.openPalette.backgroundColor = [UIColor clearColor];
    self.paletteButtonSave.layer.shadowOffset = CGSizeMake(0.0, 0.0);
    self.paletteButtonSave.layer.shadowOpacity = 1.0;
    self.paletteButtonSave.layer.shadowPath = [UIBezierPath
                                         bezierPathWithRoundedRect:self.paletteButtonSave.bounds cornerRadius:10.0].CGPath;
    
    [self shadowMaker: self.button1];
    [self shadowMaker: self.button2];
    [self shadowMaker: self.button3];
    [self shadowMaker: self.button4];
    [self shadowMaker: self.button5];
    [self shadowMaker: self.button6];
    [self shadowMaker: self.button7];
    [self shadowMaker: self.button8];
    [self shadowMaker: self.button9];
    [self shadowMaker: self.button10];
    [self shadowMaker: self.button11];
    [self shadowMaker: self.button12];
    
//    [self.button1 setBackgroundColor: [UIColor colorNamed:@"Color1-Red"] forState:UIControlT];
//
    [self.button1 addTarget:self action:@selector(palleteButtonAction:) forControlEvents: UIControlEventTouchUpInside];
    [self.button2 addTarget:self action:@selector(palleteButtonAction:) forControlEvents: UIControlEventTouchUpInside];
    [self.button3 addTarget:self action:@selector(palleteButtonAction:) forControlEvents: UIControlEventTouchUpInside];
    [self.button4 addTarget:self action:@selector(palleteButtonAction:) forControlEvents: UIControlEventTouchUpInside];
    [self.button5 addTarget:self action:@selector(palleteButtonAction:) forControlEvents: UIControlEventTouchUpInside];
    [self.button6 addTarget:self action:@selector(palleteButtonAction:) forControlEvents: UIControlEventTouchUpInside];
    [self.button7 addTarget:self action:@selector(palleteButtonAction:) forControlEvents: UIControlEventTouchUpInside];
    [self.button8 addTarget:self action:@selector(palleteButtonAction:) forControlEvents: UIControlEventTouchUpInside];
    [self.button9 addTarget:self action:@selector(palleteButtonAction:) forControlEvents: UIControlEventTouchUpInside];
    [self.button10 addTarget:self action:@selector(palleteButtonAction:) forControlEvents: UIControlEventTouchUpInside];
    [self.button11 addTarget:self action:@selector(palleteButtonAction:) forControlEvents: UIControlEventTouchUpInside];
    [self.button12 addTarget:self action:@selector(palleteButtonAction:) forControlEvents: UIControlEventTouchUpInside];
}
-(void)palleteButtonAction:(UIButton *)sender{
    NSMutableArray<UIButton *> *array1 = [[NSMutableArray alloc]initWithArray:_array];
    
    if(sender.tag == self.button1.tag){
        if (([array1 containsObject:self.button1]) && (array1.count>0)){
            NSInteger index = [array1 indexOfObject:self.button1];
            [self.button1.layer setBackgroundColor:[UIColor whiteColor].CGColor];
            [array1 removeObjectAtIndex:index];
        }
        else{
            [timer invalidate];
            [array1 addObject:self.button1];
            self.button1.layer.backgroundColor = self.button1.tintColor.CGColor;
            self.button1.layer.borderColor = [UIColor whiteColor].CGColor;
            self.button1.layer.borderWidth = 2.0;
            [self.paletteChildView setBackgroundColor:self.button1.tintColor];
            timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerListener) userInfo:nil repeats:NO];
        }
    }
    if(sender.tag == self.button2.tag){
        if (([array1 containsObject:self.button2]) && (array1.count>0)){
            NSInteger index = [array1 indexOfObject:self.button2];
            [self.button2.layer setBackgroundColor:[UIColor whiteColor].CGColor];
            [array1 removeObjectAtIndex:index];
        }
        else{
            [timer invalidate];
            [array1 addObject:self.button2];
            self.button2.layer.backgroundColor = self.button2.tintColor.CGColor;
            self.button2.layer.borderColor = [UIColor whiteColor].CGColor;
            self.button2.layer.borderWidth = 2.0;
            [self.paletteChildView setBackgroundColor:self.button2.tintColor];
            timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerListener) userInfo:nil repeats:NO];
        }
    }
    if(sender.tag == self.button3.tag){
        if (([array1 containsObject:self.button3]) && (array1.count>0)){
            NSInteger index = [array1 indexOfObject:self.button3];
            [self.button3.layer setBackgroundColor:[UIColor whiteColor].CGColor];
            [array1 removeObjectAtIndex:index];
        }
        else{
            [timer invalidate];
            [array1 addObject:self.button3];
            self.button3.layer.backgroundColor = self.button3.tintColor.CGColor;
            self.button3.layer.borderColor = [UIColor whiteColor].CGColor;
            self.button3.layer.borderWidth = 2.0;
            [self.paletteChildView setBackgroundColor:self.button3.tintColor];
            timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerListener) userInfo:nil repeats:NO];
        }
    }
    if(sender.tag == self.button4.tag){
        if (([array1 containsObject:self.button4]) && (array1.count>0)){
            NSInteger index = [array1 indexOfObject:self.button4];
            [self.button4.layer setBackgroundColor:[UIColor whiteColor].CGColor];
            [array1 removeObjectAtIndex:index];
        }
        else{
            [timer invalidate];
            [array1 addObject:self.button4];
            self.button4.layer.backgroundColor = self.button4.tintColor.CGColor;
            self.button4.layer.borderColor = [UIColor whiteColor].CGColor;
            self.button4.layer.borderWidth = 2.0;
            [self.paletteChildView setBackgroundColor:self.button4.tintColor];
            timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerListener) userInfo:nil repeats:NO];
        }
    }
    if(sender.tag == self.button5.tag){
        if (([array1 containsObject:self.button5]) && (array1.count>0)){
            NSInteger index = [array1 indexOfObject:self.button5];
            [self.button5.layer setBackgroundColor:[UIColor whiteColor].CGColor];
            [array1 removeObjectAtIndex:index];
        }
        else{
            [timer invalidate];
            [array1 addObject:self.button5];
            self.button5.layer.backgroundColor = self.button5.tintColor.CGColor;
            self.button5.layer.borderColor = [UIColor whiteColor].CGColor;
            self.button5.layer.borderWidth = 2.0;
            [self.paletteChildView setBackgroundColor:self.button5.tintColor];
            timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerListener) userInfo:nil repeats:NO];
        }
    }
    if(sender.tag == self.button6.tag){
        if (([array1 containsObject:self.button6]) && (array1.count>0)){
            NSInteger index = [array1 indexOfObject:self.button6];
            [self.button6.layer setBackgroundColor:[UIColor whiteColor].CGColor];
            [array1 removeObjectAtIndex:index];
        }
        else{
            [timer invalidate];
            [array1 addObject:self.button6];
            self.button6.layer.backgroundColor = self.button6.tintColor.CGColor;
            self.button6.layer.borderColor = [UIColor whiteColor].CGColor;
            self.button6.layer.borderWidth = 2.0;
            [self.paletteChildView setBackgroundColor:self.button6.tintColor];
            timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerListener) userInfo:nil repeats:NO];
        }
    }
    if(sender.tag == self.button7.tag){
        if (([array1 containsObject:self.button7]) && (array1.count>0)){
            NSInteger index = [array1 indexOfObject:self.button7];
            [self.button7.layer setBackgroundColor:[UIColor whiteColor].CGColor];
            [array1 removeObjectAtIndex:index];
        }
        else{
            [timer invalidate];
            [array1 addObject:self.button7];
            self.button7.layer.backgroundColor = self.button7.tintColor.CGColor;
            self.button7.layer.borderColor = [UIColor whiteColor].CGColor;
            self.button7.layer.borderWidth = 2.0;
            [self.paletteChildView setBackgroundColor:self.button7.tintColor];
            timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerListener) userInfo:nil repeats:NO];
        }
    }
    if(sender.tag == self.button8.tag){
        if (([array1 containsObject:self.button8]) && (array1.count>0)){
            NSInteger index = [array1 indexOfObject:self.button8];
            [self.button8.layer setBackgroundColor:[UIColor whiteColor].CGColor];
            [array1 removeObjectAtIndex:index];
        }
        else{
            [timer invalidate];
            [array1 addObject:self.button8];
            self.button8.layer.backgroundColor = self.button8.tintColor.CGColor;
            self.button8.layer.borderColor = [UIColor whiteColor].CGColor;
            self.button8.layer.borderWidth = 2.0;
            [self.paletteChildView setBackgroundColor:self.button8.tintColor];
            timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerListener) userInfo:nil repeats:NO];
        }
    }
    if(sender.tag == self.button9.tag){
        if (([array1 containsObject:self.button9]) && (array1.count>0)){
            NSInteger index = [array1 indexOfObject:self.button9];
            [self.button9.layer setBackgroundColor:[UIColor whiteColor].CGColor];
            [array1 removeObjectAtIndex:index];
        }
        else{
            [timer invalidate];
            [array1 addObject:self.button9];
            self.button9.layer.backgroundColor = self.button9.tintColor.CGColor;
            self.button9.layer.borderColor = [UIColor whiteColor].CGColor;
            self.button9.layer.borderWidth = 2.0;
            [self.paletteChildView setBackgroundColor:self.button9.tintColor];
            timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerListener) userInfo:nil repeats:NO];
        }
    }
    if(sender.tag == self.button10.tag){
        if (([array1 containsObject:self.button10]) && (array1.count>0)){
            NSInteger index = [array1 indexOfObject:self.button10];
            [self.button10.layer setBackgroundColor:[UIColor whiteColor].CGColor];
            [array1 removeObjectAtIndex:index];
        }
        else{
            [timer invalidate];
            [array1 addObject:self.button10];
            self.button10.layer.backgroundColor = self.button10.tintColor.CGColor;
            self.button10.layer.borderColor = [UIColor whiteColor].CGColor;
            self.button10.layer.borderWidth = 2.0;
            [self.paletteChildView setBackgroundColor:self.button10.tintColor];
            timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerListener) userInfo:nil repeats:NO];
        }
    }
    if(sender.tag == self.button11.tag){
        if (([array1 containsObject:self.button11]) && (array1.count>0)){
            NSInteger index = [array1 indexOfObject:self.button11];
            [self.button11.layer setBackgroundColor:[UIColor whiteColor].CGColor];
            [array1 removeObjectAtIndex:index];
        }
        else{
            [timer invalidate];
            [array1 addObject:self.button11];
            self.button11.layer.backgroundColor = self.button11.tintColor.CGColor;
            self.button11.layer.borderColor = [UIColor whiteColor].CGColor;
            self.button11.layer.borderWidth = 2.0;
            [self.paletteChildView setBackgroundColor:self.button11.tintColor];
            timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerListener) userInfo:nil repeats:NO];
        }
    }
    if(sender.tag == self.button12.tag){
        if (([array1 containsObject:self.button12]) && (array1.count>0)){
            NSInteger index = [array1 indexOfObject:self.button12];
            [self.button12.layer setBackgroundColor:[UIColor whiteColor].CGColor];
            [array1 removeObjectAtIndex:index];
        }
        else{
            [timer invalidate];
            [array1 addObject:self.button12];
            self.button12.layer.backgroundColor = self.button12.tintColor.CGColor;
            self.button12.layer.borderColor = [UIColor whiteColor].CGColor;
            self.button12.layer.borderWidth = 2.0;
            [self.paletteChildView setBackgroundColor:self.button12.tintColor];
            timer = [NSTimer scheduledTimerWithTimeInterval:1.0 target:self selector:@selector(timerListener) userInfo:nil repeats:NO];
        }
    }
    if (array1.count == 4){
        [array1 objectAtIndex:0].layer.backgroundColor = [UIColor whiteColor].CGColor;
        
        [array1 removeObjectAtIndex:0];
    }
    _array = array1;
    self.arrData = _array;
    NSLog(@"value11: %@", self);
}

//+(id)returnFirstClassArray{
//    PaletteChildViewController *xxxB = [PaletteChildViewController new];
//    xxxB.arrData = self.arrData;
//    NSLog(@"value2: %@", xxxB.arrData);
//    NSLog(@"value3: %@", self.arrData);
//    NSLog(@"value4: %@", _array);
    //return [self copy];
//}
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
- (void)timerListener {
    self.paletteChildView.backgroundColor = [UIColor whiteColor];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)paletteButtonSaveAction:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
