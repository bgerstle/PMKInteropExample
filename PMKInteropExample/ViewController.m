//
//  ViewController.m
//  PMKInteropExample
//
//  Created by Brian Gerstle on 9/15/15.
//  Copyright © 2015 Wikimedia Foundation. All rights reserved.
//

#import "ViewController.h"
#import <PromiseKit/PromiseKit.h>
#import "PMKInteropExample-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [[SwiftClassWithPromise new] doSomethingAny].then(^(id value) {
        NSLog(@"%@", value);
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
