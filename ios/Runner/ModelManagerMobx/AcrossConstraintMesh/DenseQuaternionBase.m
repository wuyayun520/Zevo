#import "DenseQuaternionBase.h"
    
@interface DenseQuaternionBase ()

@end

@implementation DenseQuaternionBase

- (void) offsetCubitWithLayout: (NSString *)dimensionLevelStatus
{
	dispatch_async(dispatch_get_main_queue(), ^{
		UISegmentedControl *finalTernaryBorder = [[UISegmentedControl alloc] init];
		[finalTernaryBorder insertSegmentWithTitle:dimensionLevelStatus atIndex:0 animated:YES];
		finalTernaryBorder.enabled = YES;
		finalTernaryBorder.selected = NO;
		//NSLog(@"sets= bussiness5 gen_str %@", bussiness5);
	});
}


@end
        