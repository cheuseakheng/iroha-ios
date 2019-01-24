/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

#import "IRGetPendingTransactions.h"
#import "Queries.pbobjc.h"

@implementation IRGetPendingTransactions

#pragma mark - Protobuf Transformable

- (nullable id)transform:(NSError**)error {
    GetPendingTransactions *query = [[GetPendingTransactions alloc] init];

    Query_Payload *payload = [[Query_Payload alloc] init];
    payload.getPendingTransactions = query;

    return payload;
}

@end
