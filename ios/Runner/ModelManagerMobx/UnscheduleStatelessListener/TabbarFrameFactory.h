#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface TabbarFrameFactory : NSObject

@property (nonatomic) NSMutableSet * constraintThroughComposite;

+ (instancetype) tabbarFrameFactoryWithDictionary: (NSDictionary *)dict;

- (instancetype) initWithDictionary: (NSDictionary *)dict;

- (NSString *) routeOrMode;

- (NSMutableDictionary *) titleWithJob;

- (int) localizationInsideMode;

- (NSMutableSet *) composableMomentumOffset;

- (NSMutableArray *) navigatorShapeDirection;

@end

NS_ASSUME_NONNULL_END
        