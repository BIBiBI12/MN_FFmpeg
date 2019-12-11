//
//  MN_AudioReverseTool.m
//  AudioReverse
//
//  Created by 李若澜 on 2019/11/13.
//  Copyright © 2019 小众. All rights reserved.
//

#import "MN_AudioReverseTool.h"
#import "MN_FFmpegTool.h"

@implementation MN_AudioReverseTool

+ (void)mn_audioReverseWithInputPath:(NSString *)mn_inputPath
                          mn_outPath:(NSString *)mn_outPath
                    mn_completeBlock:(void (^)(NSString *mn_outPath))mn_completeBlock {
//    -preset superfast 这两个参数版本不支持
    NSString *mn_command = [NSString stringWithFormat:@"ffmpeg -i %@ -vf reverse -af areverse -y %@",mn_inputPath,mn_outPath];
    NSLog(@"command : %@",mn_command);
    dispatch_queue_t pp_execCommandQueue = dispatch_queue_create("com.audioReverse.queue", DISPATCH_QUEUE_SERIAL);
    dispatch_async(pp_execCommandQueue, ^{
        [MN_FFmpegTool mn_execCommandLine:mn_command];
        mn_completeBlock(mn_outPath);
    });
}


@end
