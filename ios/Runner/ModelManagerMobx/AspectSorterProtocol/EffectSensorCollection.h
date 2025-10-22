#import "ContinuePageviewManager.h"
#import "ActivitySchemaAdapter.h"

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface EffectSensorCollection : NSObject


- (void) receiveHeapTicker;

- (void) popCoordinatorGrain;

@end

NS_ASSUME_NONNULL_END
        