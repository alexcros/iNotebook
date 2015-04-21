#import "ACCNote.h"

@interface ACCNote ()

// Private interface goes here.

@end

@implementation ACCNote

// Custom logic goes here.

+(instancetype) noteWithName:(ACCNote*) name
                    notebook:(ACCNotebook*) notebook
                     context:(NSManagedObjectContext*) context {
    
    /*
     
     //instance
     ACCNotebook *nb = [NSEntityDescription insertNewObjectForEntityForName:[ACCNotebook entityName] inManagedObjectContext:context];
     
     nb.creationDate = [NSDate date];
     nb.modificationDate = [NSDate date];
     
     */
    
    ACCNote *n = [NSEntityDescription insertNewObjectForEntityForName:[ACCNote entityName] inManagedObjectContext:context];
    n.creationDate = [NSDate date];
    n.modificationDate = [NSDate date];
    n.notebook = notebook;
    
    return n;
    
}

@end
