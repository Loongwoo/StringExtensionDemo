//
//  ViewController.m
//  StringExtensionDemo
//
//  Created by kiwik on 7/8/15.
//  Copyright (c) 2015 Kiwik. All rights reserved.
//

#import "ViewController.h"
#import "NSString+Extensions.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *tmp=@" 我爱  中国 ";
    NSLog(@"转拼音: %@",[tmp transformToPinyin]);
    
    NSString *url=@"http://www.demo.com?para=中国";
    NSLog(@"URL %@",[url URLEncodedString]);
    
    NSString *jsonStr=@"[\"中国\",\"美国\"]";
    NSLog(@"%@",[jsonStr JSONObject]);
    
    NSLog(@"md5 %@",[tmp md5]);
    
    NSLog(@"md5ForUTF16 %@",[tmp md5ForUTF16]);
    
    NSString *tmp2=[tmp trim];
    NSLog(@"trim before %d after %d",(int)tmp.length, (int)tmp2.length);
    
    NSLog(@"trimTheExtraSpaces %@ ",[tmp trimTheExtraSpaces]);
    
    NSString *tmp4=@"   ";
    NSLog(@"isEmpty %d %d %d",[tmp isEmpty], [tmp4 isEmpty],(int)[tmp4 length]);
    
    NSString *tmp3=@"这里介绍两种方法显示PDF，第一种用UIWebView，特点是代码简单，但是没法实现翻页效果。第二中方法利用IOS系统的CGContextDrawPDFPage方法手动实现，代码复杂一些，同时需要配合UIScrollView实现缩放，以及利用UIPageViewController实现翻页的效果。";
    CGSize size=[tmp3 sizeWithFont:[UIFont systemFontOfSize:16]
                constrainedToSize:CGSizeMake(200, 2000)
                    lineBreakMode:NSLineBreakByWordWrapping];
    NSLog(@"size w %f h %f",size.width, size.height);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
