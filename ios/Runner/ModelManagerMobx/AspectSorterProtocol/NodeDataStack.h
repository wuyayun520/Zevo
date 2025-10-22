#import "TouchNavigatorRange.h"
#import "WriteLastChapter.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NodeDataStack : NSObject


- (void) mountWithBatchBuffer;

- (void) fetchInterpolationFromNode;

@end

NS_ASSUME_NONNULL_END
        