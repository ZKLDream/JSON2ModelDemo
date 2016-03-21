//
//  ViewController.m
//  JSON2ModelDemo
//
//  Created by 千锋 on 16/3/21.
//  Copyright © 2016年 mobiletrain. All rights reserved.
//

#import "ViewController.h"
#import "LoginStateModel.h"
#import "RelativeNewsModel.h"
#import "LeftMenuModel.h"
@interface ViewController ()

@end

@implementation ViewController

-(void)JSONModelDemo1{
    
    //创建一个NSURLSession
    NSURLSession *session=[NSURLSession sharedSession];
    //创建URL
    NSString *loginURLStr=[NSString stringWithFormat:@"http://10.0.8.8/sns/my/login.php?username=%@&password=%@",@"chaosky",@"123456"];
    NSURL *LoginURL=[NSURL URLWithString:loginURLStr];
    
    //创建数据请求任务
    NSURLSessionDataTask *datatask=[session dataTaskWithURL:LoginURL completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"data=%@ error=%@",data,error);
        //转换为字符串
        NSString * responsestr=[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"%@",responsestr);
        
        //JSONModel
        NSError *err;
        LoginStateModel *model=[[LoginStateModel alloc]initWithData:data error:&err];
        NSLog(@"loginState= %@",model.code);
        
    }];
    //启动任务
    [datatask resume];
}

-(void)JSONModelDemo2{
    
    NSURLSession *session=[NSURLSession sharedSession];
    
    NSURL *url=[NSURL URLWithString:@"http://appapi.jiemian.com/article/related_news/471093.json"];
    NSURLSessionDataTask *dataTask=[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"data=%@",[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding]);
        RelativeNewsModel *model=[[RelativeNewsModel alloc]initWithData:data error:nil];
        NSLog(@"model=%@",model);
    }];
    [dataTask resume];
    
    
}


-(void)YYModelDemo{
    NSURLSession *session=[NSURLSession sharedSession];
    
    NSURL *url=[NSURL URLWithString:@"http://appapi.jiemian.com/cate/left_menu.json"];
    NSURLSessionDataTask *dataTask=[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSLog(@"data=%@",[[NSString alloc]initWithData:data encoding:NSUTF8StringEncoding]);
        LeftMenuModel *model=[LeftMenuModel yy_modelWithJSON:data];
        NSLog(@"model=%@",model);
      
    }];
    [dataTask resume];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self JSONModelDemo2];
    
}

/**
 *  <#Description#>
 *
 *  @param model <#model description#>
 *  @param tag   <#tag description#>
 *
 *  @return <#return value description#>
 */
-(BOOL)addModel:(id)model WithTag:(NSInteger)tag{
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
