#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface StateMetricsCollection : NSObject

@property (nonatomic) int binaryStructureLeft;

@property (nonatomic) int dependencyStateSkewy;

+ (instancetype) stateMetricsCollectionWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) spotMethodName;

- (NSMutableDictionary *) graphMethodCount;

- (int) playbackObserverBound;

- (NSMutableSet *) hardBufferInterval;

- (NSMutableArray *) statefulVectorInset;

@end

NS_ASSUME_NONNULL_END
        