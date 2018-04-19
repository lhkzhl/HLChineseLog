//
//  NSDictionary+Chinese.m
//  XML解析
//
//  Created by  lhkzhl on 2018/3/30.
//  Copyright © 2018年  lhkzhl. All rights reserved.
//

#import "NSDictionary+Chinese.h"

#ifdef DEBUG
@implementation NSDictionary (Chinese)

- (NSString *)description{
    NSMutableString *str = [[NSMutableString alloc] initWithString:@"{\n"];

    __block int idx = 0;
    [self enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {

        NSString *value = [obj description];
        if ([obj isKindOfClass:[NSArray class]]) {
            value = [value stringByReplacingCharactersInRange:NSMakeRange(0, 0) withString:@"\t"];
            value = [value stringByReplacingCharactersInRange:NSMakeRange(value.length-1, 1) withString:@""];
            value = [value stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
        }
        if (idx == self.count - 1) {
            [str appendString:[NSString stringWithFormat:@"\t%@ = %@\n",key,value]];
        }else{
            [str appendString:[NSString stringWithFormat:@"\t%@ = %@;\n",key,value]];
        }
        idx ++;
    }];
    [str appendString:@"}\n"];
    return str;
}

- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level{
    return self.description;
}
@end



@implementation NSArray (Chinese)

- (NSString *)description{
    NSMutableString *str = [[NSMutableString alloc] initWithString:@"(\n"];
    [self enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {

        NSString *value = [obj description];
        if ([obj isKindOfClass:[NSDictionary class]]) {
            value = [value stringByReplacingCharactersInRange:NSMakeRange(0, 0) withString:@"\t"];
            value = [value stringByReplacingCharactersInRange:NSMakeRange(value.length-1, 1) withString:@""];
            value = [value stringByReplacingOccurrencesOfString:@"\n" withString:@"\n\t"];
        }

        if (idx == self.count - 1) {
            [str appendString:[NSString stringWithFormat:@"\t%@\n",value]];
        }else{
            [str appendString:[NSString stringWithFormat:@"\t%@,\n",value]];
        }
    }];
    [str appendString:@")\n"];
    return str;
}
- (NSString *)descriptionWithLocale:(id)locale indent:(NSUInteger)level{
    return self.description;
}
@end

#endif
