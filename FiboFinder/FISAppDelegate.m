//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

/**
 
 * Write your method implemenation here.
 
 */
-(NSArray*)arrayWithFibonacciSequenceToIndex:(NSInteger)index {
    
    NSMutableArray* sequence = [[NSMutableArray alloc] init];
    
    for (NSInteger i = 0; i < index +1 ; i++){
        
        if (i == 0){
            [sequence addObject:@0];
        }
        else if (i == 1) {
            [sequence addObject:@1];
        }
        else{
            NSUInteger sequenceNumAtIndexNegOne = [sequence[i-1] integerValue];
            NSUInteger sequenceNumAtIndexNegTwo = [sequence[i-2] integerValue];
            NSUInteger newFibonacciNum = sequenceNumAtIndexNegOne + sequenceNumAtIndexNegTwo;
            NSNumber* newFibonacciNumber = @(newFibonacciNum);
            [sequence addObject:newFibonacciNumber];
        
        }
            
    }
    return sequence;
}

@end
