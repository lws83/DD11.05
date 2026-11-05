// DD11.05 稳定性诊断版
// 本版本不修改系统 API、设备标识、文件可见性、环境检测结果或微信业务上报。
// 仅在目标进程加载时输出有限的启动诊断信息。

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

%ctor {
    @autoreleasepool {
        NSBundle *bundle = [NSBundle mainBundle];
        NSString *bundleID = bundle.bundleIdentifier ?: @"(unknown)";
        NSString *version = [bundle objectForInfoDictionaryKey:@"CFBundleShortVersionString"] ?: @"(unknown)";
        NSString *build = [bundle objectForInfoDictionaryKey:@"CFBundleVersion"] ?: @"(unknown)";
        NSString *system = [UIDevice currentDevice].systemVersion ?: @"(unknown)";

        NSLog(@"[DD11.05] Diagnostic tweak loaded; bundle=%@ version=%@ build=%@ iOS=%@",
              bundleID, version, build, system);
    }
}
