//
//  JALMinePageController.m
//  JALMinePage
//
//  Created by j066 on 2019/3/11.
//  Copyright © 2019 j066. All rights reserved.
//

#import "JALMinePageController.h"
#import <MGJRouter/MGJRouter.h>

@interface JALMinePageController ()

@end

@implementation JALMinePageController

+ (void)load
{
    [super load];
    
    [MGJRouter registerURLPattern:@"JAL://JALMinePage/MainVC" toObjectHandler:^id(NSDictionary *routerParameters) {
        JALMinePageController *vc = [[JALMinePageController alloc] init];
        return vc;
    }];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.title = @"我的";
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.view.backgroundColor = [UIColor greenColor];
}


@end
