//
//  MN_ViewController.m
//  MN_FFmpeg
//
//  Created by me_zqx on 12/10/2019.
//  Copyright (c) 2019 me_zqx. All rights reserved.
//

#import "MN_ViewController.h"
#import "MN_FFmpegTool.h"
#import "MN_AudioReverseTool.h"

@interface MN_ViewController ()

@end

@implementation MN_ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //输入文件地址
    NSString *mn_inputPath = [[NSBundle mainBundle] pathForResource:@"mn_video3" ofType:@"m4a"];
    NSString *mn_fileName = [NSString stringWithFormat:@"%@_reverse.%@",[[mn_inputPath lastPathComponent] stringByDeletingPathExtension],[mn_inputPath pathExtension]];
    //    输入文件地址
    NSString * pp_textFolderPath = [NSTemporaryDirectory() stringByAppendingPathComponent:@"audio"];
    [[NSFileManager defaultManager] createDirectoryAtPath:pp_textFolderPath withIntermediateDirectories:YES attributes:nil error:nil];
    NSString *mn_outPath = [pp_textFolderPath stringByAppendingPathComponent:mn_fileName];
    [MN_AudioReverseTool mn_audioReverseWithInputPath:mn_inputPath
                                           mn_outPath:mn_outPath
                                     mn_completeBlock:^(NSString * _Nonnull mn_outPath) {
                                         NSLog(@"输出地址: %@",mn_outPath);
                                     }];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];

}

@end
