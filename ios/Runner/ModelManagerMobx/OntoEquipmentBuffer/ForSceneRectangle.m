#import "ForSceneRectangle.h"
    
@interface ForSceneRectangle ()

@end

@implementation ForSceneRectangle

- (instancetype) init
{
	NSNotificationCenter *enabledResultKind = [NSNotificationCenter defaultCenter];
	[enabledResultKind addObserver:self selector:@selector(spineVariableOffset:) name:UIKeyboardWillChangeFrameNotification object:nil];
	return self;
}

- (void) startOldLoop: (int)concreteRectHue
{
	dispatch_async(dispatch_get_main_queue(), ^{
		int builderStateHue=0;
		//NSLog(@"sets= bussiness5 gen_int %@", bussiness5);
	});
}

- (void) spineVariableOffset: (NSNotification *)listenerLayerMode
{
	//NSLog(@"userInfo=%@", [listenerLayerMode userInfo]);
}

- (void) dealloc
{
	[[NSNotificationCenter defaultCenter] removeObserver:self];
}


@end
        