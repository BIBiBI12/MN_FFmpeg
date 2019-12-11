//
//  MN_AudioReverseTool.h
//  AudioReverse
//
//  Created by 李若澜 on 2019/11/13.
//  Copyright © 2019 小众. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MN_AudioReverseTool : NSObject

+ (void)mn_audioReverseWithInputPath:(NSString *)mn_inputPath
                          mn_outPath:(NSString *)mn_outPath
                    mn_completeBlock:(void (^)(NSString *mn_outPath))mn_completeBlock;


@end

NS_ASSUME_NONNULL_END
