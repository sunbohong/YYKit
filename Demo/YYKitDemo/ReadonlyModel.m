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

@property (nonatomic, copy) NSString *privatepro0;
@property (nonatomic, copy) NSString *privatepro1;

@end

@implementation ReadonlyModel

+ (NSDictionary<NSString *, id> *)modelCustomPropertyMapper {
    return @{@"privatepro0":@"pro0", @"pro1":@"pro1"};
}

- (NSString *)description {
    return [NSString stringWithFormat:@"pro0==%@,pro1==%@,pro2==%@", self.privatepro0, self.privatepro1,pro2];
}

@end
