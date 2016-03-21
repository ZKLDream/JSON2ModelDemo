//
//  LeftMenuModel.h
//  JSON2ModelDemo
//
//  Created by 千锋 on 16/3/21.
//  Copyright © 2016年 mobiletrain. All rights reserved.
//

// 使用YYModel解析JSON数据


#import <Foundation/Foundation.h>
#import <YYModel.h>

@class LeftMenuResultModel,CooperationModel,DataModel,ChannelModel,RowsModel;

@interface LeftMenuModel : NSObject

@property (nonatomic, copy) NSString *message;

@property (nonatomic, strong) LeftMenuResultModel *result;

@property (nonatomic, copy) NSString *code;

@end
@interface LeftMenuResultModel : NSObject <YYModel>

@property (nonatomic, strong) NSArray<ChannelModel *> *channel;

@property (nonatomic, strong) CooperationModel *cooperation;

@end

@interface CooperationModel : NSObject

@property (nonatomic, copy) NSString *notes;

@property (nonatomic, copy) NSString *notesUrl;

@property (nonatomic, strong) NSArray<DataModel *> *data;

@end

@interface DataModel : NSObject<YYModel>

@property (nonatomic, copy) NSString *slogan;

@property (nonatomic, copy) NSString *sort;

@property (nonatomic, copy) NSString *unistr;

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *show;

@property (nonatomic, copy) NSString *type;

@property (nonatomic, copy) NSString *icon;

@property (nonatomic, copy) NSString *url;

@end

@interface ChannelModel : NSObject

@property (nonatomic, copy) NSString *color;

@property (nonatomic, strong) NSArray<RowsModel *> *rows;

@end

@interface RowsModel : NSObject

@property (nonatomic, copy) NSString *slogan;

@property (nonatomic, copy) NSString *sort;

@property (nonatomic, copy) NSString *unistr;

@property (nonatomic, copy) NSString *ID;

@property (nonatomic, copy) NSString *title;

@property (nonatomic, copy) NSString *show;

@property (nonatomic, copy) NSString *type;

@property (nonatomic, copy) NSString *icon;

@property (nonatomic, copy) NSString *url;

@end

