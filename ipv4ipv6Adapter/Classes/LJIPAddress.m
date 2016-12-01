//
//  LJIPAddress.m
//  Pods
//
//  Created by top on 2016/12/1.
//
//

#import "LJIPAddress.h"

@implementation LJIPAddress
+(NSString*)HttpAddress:(NSString *)ipv6 ipv4:(NSString *)ipv4{
    GCNetworkReachability* gc =  [GCNetworkReachability reachabilityWithIPv6AddressString:ipv6];
    if([gc isReachable]){
        return [NSString stringWithFormat:@"http://[%@]",ipv6];
    }else{
        return [NSString stringWithFormat:@"http://%@",ipv4];
    }
    
}
+(NSString*)HttpsAddress:(NSString *)ipv6 ipv4:(NSString *)ipv4{
    GCNetworkReachability* gc =  [GCNetworkReachability reachabilityWithIPv6AddressString:ipv6];
    if([gc isReachable]){
        return [NSString stringWithFormat:@"https://[%@]",ipv6];
    }else{
        return [NSString stringWithFormat:@"https://%@",ipv4];
    }
    
}
@end
