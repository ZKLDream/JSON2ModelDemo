//
//  LeftMenuModel.m
//  JSON2ModelDemo
//
//  Created by 千锋 on 16/3/21.
//  Copyright © 2016年 mobiletrain. All rights reserved.
//

#import "LeftMenuModel.h"


@implementation LeftMenuModel

@end


@implementation LeftMenuResultModel

//类中属性为数组 数组关联其他类需要遵从YYModel协议的modelContainerPropertyGenericClass方法

//字典中key对应的是类的属性名称  value对应关联类的class
+(NSDictionary *)modelContainerPropertyGenericClass{
    return @{@"channel":[ChannelModel class]};
}

@end


@implementation CooperationModel

+(NSDictionary *)modelContainerPropertyGenericClass{
    return @{@"data":[DataModel class]};
}

@end


@implementation DataModel

//类中属性的名称和JSON数据中对应的key不一致时 需要遵从YYModel实现modelCustomPropertyMapper方法
//字典中key对应当前类的属性名称  value对应JSON数据中的key
+(NSDictionary *)modelCustomPropertyMapper{
    return @{@"ID":@"id"};
}

@end




@implementation ChannelModel

+(NSDictionary *)modelContainerPropertyGenericClass{
    return @{@"rows":[RowsModel class]};
}

@end



@implementation RowsModel

+(NSDictionary *)modelCustomPropertyMapper{
    return @{@"ID":@"id"};
}


@end


