//VideoDewatermarking
//VideoDewatermarking

#import "MN_FFmpegTool.h"
#import "ffmpeg.h"



@implementation MN_FFmpegTool

+ (void)mn_execCommandLine:(NSString *)commandStr {
//     分割字符串
    NSMutableArray  *argv_array  = [commandStr componentsSeparatedByString:(@" ")].mutableCopy;
    // 获取参数个数
    int argc = (int)argv_array.count;
    // 遍历拼接参数
    char **argv = calloc(argc, sizeof(char*));
    for(int i=0; i< argc; i++){
        NSString *codeStr = argv_array[i];
        argv_array[i]     = codeStr;
        argv[i]      = (char *)[codeStr UTF8String];
    }
    ff_main(argc, argv);
}

@end


