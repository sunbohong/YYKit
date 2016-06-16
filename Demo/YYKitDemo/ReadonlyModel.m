//
//  ReadonlyModel.m
//  YYKitDemo
//
//  Created by sunbohong on 16/5/20.
//  Copyright © 2016年 ibireme. All rights reserved.
//

#import "ReadonlyModel.h"
#import "NSObject+YYModel.h"

@interface ReadonlyModel ()<YYModel>

@property (nonatomic, copy, readwrite) NSString *pro1;

@end

@implementation ReadonlyModel


- (NSString *)description {
    return [NSString stringWithFormat:@"pro0==%@,pro1==%@,pro2==%@", self.pro0, self.pro1, pro2];
}

@end
