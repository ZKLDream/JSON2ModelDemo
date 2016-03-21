//
//  RelativeNewsModel.h
//  JSON2ModelDemo
//
//  Created by 千锋 on 16/3/21.
//  Copyright © 2016年 mobiletrain. All rights reserved.
//

//使用JSONModel解析多层次的JSON 如果属性中有一个或者多个数组 数组存储的是其他类型的模型 让数组遵循对应模型的同名协议
#import <Foundation/Foundation.h>
#import <JSONModel.h>

@class Result,Taginfo,Related_News;

@protocol Related_News



@end
@protocol Taginfo



@end

@interface RelativeNewsModel : JSONModel


@property (nonatomic, copy) NSString *message;

@property (nonatomic, strong) Result *result;

@property (nonatomic, copy) NSString *code;

@end
@interface Result : JSONModel

@property (nonatomic, copy) NSString <Optional>*adsTop;

@property (nonatomic, strong) NSArray<Related_News>*related_news;

@property (nonatomic, strong) NSArray<Taginfo> *taginfo;

@property (nonatomic, strong) NSArray *ads;

@end

@interface Taginfo : JSONModel

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *key;

@property (nonatomic, copy) NSString *name;

@property (nonatomic, copy) NSString *type;

@end

@interface Related_News : JSONModel

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *title;

@end

