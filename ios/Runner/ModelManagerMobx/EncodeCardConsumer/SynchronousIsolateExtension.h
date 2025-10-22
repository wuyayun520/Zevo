#import "DismissActivityResult.h"
#import "AsyncTaxonomyDecorator.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SynchronousIsolateExtension : NSObject


- (void) presentUnaryResult;

- (void) popStoreWithMember;

@end

NS_ASSUME_NONNULL_END
        