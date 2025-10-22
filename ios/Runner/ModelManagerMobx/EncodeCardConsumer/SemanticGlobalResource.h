#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SemanticGlobalResource : NSObject

@property (nonatomic) NSMutableDictionary * interfaceEnvironmentCenter;

@property (nonatomic) NSMutableDictionary * globalSceneIndex;

+ (instancetype) semanticGlobalResourceWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) baseKindSaturation;

- (NSMutableDictionary *) stateForJob;

- (int) projectionWorkMode;

- (NSMutableSet *) specifierStageBehavior;

- (NSMutableArray *) composableNodeLeft;

@end

NS_ASSUME_NONNULL_END
        