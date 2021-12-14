### Xcode 构建幕后原理

http://chuquan.me/2021/02/16/understand-ios-xcode-build-process/



## WWDC

#### Behind the Scenes of the Xcode Build Process

https://developer.apple.com/videos/play/wwdc2018/415/



#### Building Faster in Xcode

https://developer.apple.com/videos/play/wwdc2018/408





##### 验证后 hmap是以一个project为区域生成的,刚好解决了我之前找不到只属于同一个target内头文件的问题, 那我就能以project为区域生成hmap