//
//  ReadonlyModel.h
//  YYKitDemo
//
//  Created by sunbohong on 16/5/20.
//  Copyright © 2016年 ibireme. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ReadonlyModel : NSObject
{
    NSString *pro2;
}

@property (nonatomic, copy, readonly) NSString *pro0;
@property (nonatomic, copy, readonly) NSString *pro1;

@end
