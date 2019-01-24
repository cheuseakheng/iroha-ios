/**
 * Copyright Soramitsu Co., Ltd. All Rights Reserved.
 * SPDX-License-Identifier: Apache-2.0
 */

@import XCTest;
@import SwiftyIroha;

@interface IRGrantablePermissionTests : XCTestCase

@end

@implementation IRGrantablePermissionTests

- (void)testValidGrantablePermission {
    for (int i = 1; i < 5; i++) {
        id<IRGrantablePermission> permission = [IRGrantablePermissionFactory permissionWithValue:i
                                                                                           error:nil];
        XCTAssertNotNil(permission);
        XCTAssertEqual(permission.value, i);
    }
}

- (void)testInvalidGrantablePermissionWithError {
    for (int i = 5; i < 10; i++) {
        NSError *error;
        id<IRGrantablePermission> permission = [IRGrantablePermissionFactory permissionWithValue:i
                                                                                           error:&error];
        XCTAssertNil(permission);
        XCTAssertNotNil(error);
        XCTAssertEqual(error.code, IRInvalidGrantablePermissionValue);
    }
}

- (void)testInvalidGrantablePermissionWithoutError {
    for (int i = 5; i < 10; i++) {
        id<IRGrantablePermission> permission = [IRGrantablePermissionFactory permissionWithValue:i
                                                                                           error:nil];
        XCTAssertNil(permission);
    }
}

@end
