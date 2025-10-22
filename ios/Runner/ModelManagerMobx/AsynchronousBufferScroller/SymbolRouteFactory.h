#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SymbolRouteFactory : NSObject

@property (nonatomic) NSMutableDictionary * dynamicStatefulLocation;

+ (instancetype) symbolRouteFactoryWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) channelsChainMode;

- (NSMutableDictionary *) fragmentVersusParameter;

- (int) sceneBeyondCommand;

- (NSMutableSet *) alignmentStateCoord;

- (NSMutableArray *) spotAndParameter;

@end

NS_ASSUME_NONNULL_END
        