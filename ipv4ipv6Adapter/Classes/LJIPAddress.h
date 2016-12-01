//
//  LJIPAddress.h
//  Pods
//
//  Created by top on 2016/12/1.
//
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "GCNetworkReachability.h"
@interface LJIPAddress : NSObject
+(NSString*)HttpAddress:(NSString*)ipv6 ipv4:(NSString*)ipv4;
+(NSString*)HttpsAddress:(NSString*)ipv6 ipv4:(NSString*)ipv4;
@end
