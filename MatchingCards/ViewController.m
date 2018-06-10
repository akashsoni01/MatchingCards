//
//  ViewController.m
//  MatchingCards
//
//  Created by Akash soni on 6/10/18.
//  Copyright © 2018 Akash soni. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UILabel *flipLabel;
@property (nonatomic) int flipCount;
@end

@implementation ViewController
- (void)setFlipCount:(int)flipCount{
    _flipCount = flipCount;
    self.flipLabel.text = [NSString stringWithFormat:@"Flip counts: %d",flipCount];
    NSLog(@"flip count = %d",self.flipCount);
}
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    printf("Hello world testing");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)touchCard:(UIButton *)sender {
    if ([sender.currentTitle length]){
        UIImage *cardImage = [UIImage imageNamed:@"back1"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    }else{
        UIImage *cardImage = [UIImage imageNamed:@"front"];
        [sender setBackgroundImage:cardImage forState:UIControlStateNormal];
        [sender setTitle:@"A♣︎" forState:UIControlStateNormal];
    }
    self.flipCount++;
}
@end
