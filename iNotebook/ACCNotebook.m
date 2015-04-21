#import "ACCNotebook.h"

@interface ACCNotebook ()

// Private interface goes here.

@end

@implementation ACCNotebook

// Custom logic goes here.

+(instancetype) notebookWithName:(NSString*) name
                         context:(NSManagedObjectContext*) context {
    
    //instance
    ACCNotebook *nb = [NSEntityDescription insertNewObjectForEntityForName:[ACCNotebook entityName] inManagedObjectContext:context];
    
    nb.creationDate = [NSDate date];
    nb.modificationDate = [NSDate date];
    
    return nb;
}

@end
