//
//  WZLOGPREFIXViewController.m
//  WZLog
//
//  Created by qiuqixiang on 02/02/2021.
//  Copyright (c) 2021 qiuqixiang. All rights reserved.
//

#import "WZLOGPREFIXViewController.h"
#import "NSDictionary+Log.h"
#import "NSArray+Log.h"

@interface WZLOGPREFIXViewController ()

@end

@implementation WZLOGPREFIXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    NSDictionary *dic = @{@"xx": @"该用户已关闭交友你来的太迟了快去找找新的缘分吧"};
    [dic debugLog];
    
    NSArray *arr = @[@"该用户已关闭交友你来的太迟了快去找找新的缘分吧", @"该用户已关闭交友你来的太迟了快去找找新的缘分吧"];
    [arr debugLog];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
