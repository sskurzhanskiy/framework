//
//  OneMore.m
//  OneMoreFramework
//
//  Created by Sergey Skurzhanskiy on 07/05/2019.
//  Copyright © 2019 Sergey Skurzhanskiy. All rights reserved.
//

#import "OneMore.h"

#import "Masonry.h"
#import "SVProgressHUD.h"
#import "RestKit.h"
#import <OneSignal/OneSignal.h>

@implementation OneMore

-(void)printLog {
    NSLog(@"%s", __PRETTY_FUNCTION__);
    
    [OneSignal sendTag:@"tag-1" value:@"value-1"];
    [OneSignal getTags:^(NSDictionary *result) {
        NSLog(@"---> %@", result);
    }];
    
    SVProgressHUD *hud = [SVProgressHUD new];
    hud.tag = 123;
    
    RKObjectManager *objectManager = [RKObjectManager managerWithBaseURL:[NSURL URLWithString:@"https://google.com"]];
    [objectManager setAcceptHeaderWithMIMEType:RKMIMETypeJSON];
    
    NSLog(@"---> %@", objectManager.baseURL);
}

@end
