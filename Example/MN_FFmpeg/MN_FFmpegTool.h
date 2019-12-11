//VideoDewatermarking
//VideoDewatermarking

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MN_FFmpegTool : NSObject

/**
 执行命令行 指令
 
 @param mn_commandStr 命令行
 */
+ (void)mn_execCommandLine:(NSString *)mn_commandStr;




@end

NS_ASSUME_NONNULL_END
