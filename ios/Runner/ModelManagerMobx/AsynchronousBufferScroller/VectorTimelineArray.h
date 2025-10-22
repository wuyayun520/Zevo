#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VectorTimelineArray : NSObject

@property (nonatomic) NSMutableArray * composableNodeOrientation;

+ (instancetype) vectorTimelineArrayWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) navigatorPhaseType;

- (NSMutableDictionary *) storeAtCycle;

- (int) labelOrValue;

- (NSMutableSet *) persistentSymbolVisibility;

- (NSMutableArray *) expandedNearComposite;

@end

NS_ASSUME_NONNULL_END
        