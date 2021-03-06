/*
 * Copyright (c) Facebook, Inc. and its affiliates.
 * All rights reserved.
 *
 * This source code is licensed under the license found in the
 * LICENSE file in the root directory of this source tree.
 */

#if !TARGET_OS_TV

#import "FBSDKLoginCompletionParameters+Internal.h"

@implementation FBSDKLoginCompletionParameters

- (instancetype)init
{
  return [super init];
}

- (instancetype)initWithError:(NSError *)error
{
  if ((self = [self init])) {
    _error = error;
  }
  return self;
}

@end

#endif
