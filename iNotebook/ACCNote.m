#import "ACCNote.h"

@interface ACCNote ()

+(NSArray*) observableKeyNames;

@end

@implementation ACCNote

+(NSArray*) observableKeyNames {
    
    return @[@"name", @"creationDate",  @"notebook", @"photo"];
}

+(instancetype) noteWithName:(NSString
                              *) name
                    notebook:(ACCNotebook*) notebook
                     context:(NSManagedObjectContext*) context {
    
    /*
     
     //instance
     ACCNotebook *nb = [NSEntityDescription insertNewObjectForEntityForName:[ACCNotebook entityName] inManagedObjectContext:context];
     
     nb.creationDate = [NSDate date];
     nb.modificationDate = [NSDate date];
     
     */
    
    ACCNote *note = [NSEntityDescription insertNewObjectForEntityForName:[ACCNote entityName] inManagedObjectContext:context];
    note.creationDate = [NSDate date];
    note.notebook = notebook;
    note.modificationDate = [NSDate date];
    note.name = name;
    
    return note;
    
}



@end
