//
//  ViewController.m
//  3DTouch
//
//  Created by Tensab San on 8/30/16.
//  Copyright © 2016 Tensab San. All rights reserved.
//

#import "ViewController.h"
#import <LocalAuthentication/LocalAuthentication.h>
#import "MyTableViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)fingerPrint:(id)sender {
    
    LAContext *fingerContext = [[LAContext alloc]init];
    NSString *touchIdReason = @"Just Use it";
    
    if ([fingerContext canEvaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics error:nil]) {
        
        [fingerContext evaluatePolicy:LAPolicyDeviceOwnerAuthenticationWithBiometrics localizedReason:touchIdReason reply:^(BOOL success, NSError * _Nullable error) {
            if (success) {
                
                dispatch_async(dispatch_get_main_queue(), ^{
                    // code here
                    //[self performSegueWithIdentifier:@"totable" sender:self];
                    MyTableViewController *mvc = [self.storyboard instantiateViewControllerWithIdentifier:@"table"];
                    [self.navigationController pushViewController:mvc animated:YES];
                    
                });
                
            }
        }];
        
    }
    else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"NO TOUCH ID" message:@"Your Device does not support touch id" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *ok = [UIAlertAction actionWithTitle:@"OK" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:ok];
        [self presentViewController:alert animated:YES completion:nil];
    }
    
}

@end
