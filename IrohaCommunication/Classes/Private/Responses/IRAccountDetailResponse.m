/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import "IRAccountDetailResponse.h"

@implementation IRAccountDetailResponse
@synthesize detail = _detail;
@synthesize queryHash = _queryHash;

- (nonnull instancetype)initWithDetail:(nonnull NSString*)detail
                             queryHash:(nonnull NSData*)queryHash {
    if (self = [super init]) {
        _detail = detail;
        _queryHash = queryHash;
    }

    return self;
}

@end
