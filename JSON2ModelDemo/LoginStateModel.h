//
//  LoginStateModel.h
//  JSON2ModelDemo
//
//  Created by 千锋 on 16/3/21.
//  Copyright © 2016年 mobiletrain. All rights reserved.
//

#import <Foundation/Foundation.h>
//JSONModel为入侵式 要使用该框架需要继承自JSONModel
#import <JSONModel.h>

@interface LoginStateModel : JSONModel


@property (nonatomic, copy) NSString *code;

@property (nonatomic, copy) NSString *message;

@property (nonatomic, assign) NSInteger expiretime;

@property (nonatomic, copy) NSString *m_auth;

@property (nonatomic, copy) NSString *uid;

@property (nonatomic,copy)NSString<Optional> *age;

@end
