#import "ACCNamedEntity.h"

@interface ACCNamedEntity ()

+(NSArray*) observableKeyNames;

@end

@implementation ACCNamedEntity

#pragma mark - class methods

+ (NSArray*) observableKeyNames {
    
    return @[@"name", @"creationDate"];
    
}

#pragma mark - KVO
// on
-(void) setupKVO {
    
    
    for (NSString *key in [[self class] observableKeyNames]) {
        
        [self addObserver:self
               forKeyPath:key
                  options:NSKeyValueObservingOptionNew | NSKeyValueObservingOptionOld
                  context:NULL];
    }
}
// off
-(void) tearDownKVO {
    
    for (NSString *key in [[self class] observableKeyNames]) {
        [self removeObserver:self
                  forKeyPath:key];
    }
    
}

-(void) observeValueForKeyPath:(NSString *)keyPath
                      ofObject:(id)object
                        change:(NSDictionary *)change
                       context:(void *)context {
    
    self.modificationDate = [NSDate date];
    
}

#pragma mark - LifeCycle

-(void) awakeFromInsert {
    
    [super awakeFromInsert];
    [self setupKVO];
}

-(void) awakeFromFetch {
    
    [super awakeFromFetch];
    [self setupKVO];
    
}

-(void) willTurnIntoFault {
    
    [super willTurnIntoFault];
    
    [self tearDownKVO];
    
}


@end
