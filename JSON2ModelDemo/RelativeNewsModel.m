//
//  RelativeNewsModel.m
//  JSON2ModelDemo
//
//  Created by 千锋 on 16/3/21.
//  Copyright © 2016年 mobiletrain. All rights reserved.
//

#import "RelativeNewsModel.h"

@implementation RelativeNewsModel

@end


@implementation Result


@end


@implementation Taginfo

//当JSON数据中key和模型数据中对应的key不一样时，通过该方法可以将JSON数据的key和模型数据的key关联起来

//JSON数据的key作为字典数据的key  模型数据中key作为字典的value
+(JSONKeyMapper *)keyMapper{
    JSONKeyMapper *mapper=[[JSONKeyMapper alloc]initWithDictionary:@{@"id":@"ID"}];
    return mapper;
    
}

@end


@implementation Related_News

+(JSONKeyMapper *)keyMapper{
    JSONKeyMapper *mapper=[[JSONKeyMapper alloc]initWithDictionary:@{@"id":@"ID"}];
    return mapper;
    
}

@end


