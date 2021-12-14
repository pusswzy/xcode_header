//
//  ViewController.m
//  ios_example
//
//  Created by zhongyi wang on 2021/12/11.
//

#import "ViewController.h"
#warning 这个能找到可不是什么好表现啊
#import "AA.h"
#import "OnlyHeader.h"

/*
 OnlyHeader.h -> /Users/zhongyiwang/Desktop/xcode_header/ios_example/FakeParent/OnlyHeader.h
 ⚠️[牛逼吧 xcode是怎么生成的呢]OnlyHeaderNotImported.h -> /Users/zhongyiwang/Desktop/xcode_header/ios_example/FakeParent/OnlyHeaderNotImported.h
 */

/*
 为什么编译能成功?
 因为编译时期已经生成了header_map 所以头文件查找能成功. 链接时候失败
 
 两个target相互调用,必须在.m文件的target membership中选择对应的target
 */
//#import "TwoTargetClass.h"



/*
 hmap print /Users/zhongyiwang/Library/Developer/Xcode/DerivedData/ios_example-eolefsddzaoxdzgwovgxyqlkukpb/Build/Intermediates.noindex/ios_example.build/Debug-iphonesimulator/ios_example.build/ios_example-project-headers.hmap
 
 AA.h -> /Users/zhongyiwang/Desktop/xcode_header/ios_example/FakeParent/AA.h
 AppDelegate.h -> /Users/zhongyiwang/Desktop/xcode_header/ios_example/ios_example/AppDelegate.h
 CC.h -> /Users/zhongyiwang/Desktop/xcode_header/ios_example/FakeParent/1/CC.h
 Not_target_header.h -> /Users/zhongyiwang/Desktop/xcode_header/ios_example/wo_diu_ni/lhz/Not_target_header.h
 SceneDelegate.h -> /Users/zhongyiwang/Desktop/xcode_header/ios_example/ios_example/SceneDelegate.h
 TestClass.h -> /Users/zhongyiwang/Desktop/xcode_header/ios_example/ios_example/wocao/TestClass.h
 TwoTargetClass.h -> /Users/zhongyiwang/Desktop/xcode_header/ios_example/TwoTarget/Two/TwoTargetClass.h
 ViewController.h -> /Users/zhongyiwang/Desktop/xcode_header/ios_example/ios_example/ViewController.h
 */
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [AA log];
//    [TwoTargetClass log];
}


@end
