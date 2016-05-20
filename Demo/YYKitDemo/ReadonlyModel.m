//
//  ReadonlyModel.m
//  YYKitDemo
//
//  Created by sunbohong on 16/5/20.
//  Copyright © 2016年 ibireme. All rights reserved.
//

#import "ReadonlyModel.h"

@interface ReadonlyModel ()

@property (nonatomic, copy) NSString *变量0;

@end

@implementation ReadonlyModel

- (NSString *)description {
    return [NSString stringWithFormat:@"变量0==%@,变量1==%@", self.变量0, self.变量1];
}

@end
