#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface RequiredStandaloneDependency : NSObject

@property (nonatomic) int queueAndProcess;

@property (nonatomic) NSMutableDictionary * storeWithoutAction;

+ (instancetype) requiredStandaloneDependencyWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) collectionOrStage;

- (NSMutableDictionary *) inkwellSingletonBottom;

- (int) actionOperationState;

- (NSMutableSet *) materialRouteMode;

- (NSMutableArray *) gridviewCompositeName;

@end

NS_ASSUME_NONNULL_END
        