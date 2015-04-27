#import "ACCNotebook.h"

@interface ACCNotebook ()

+(NSArray*) observableKeyNames;

@end

@implementation ACCNotebook

+(NSArray*) observableKeyNames {
    
    return @[@"creationDate", @"name", @"notes"];
}

+(instancetype) notebookWithName:(NSString*) name
                         context:(NSManagedObjectContext*) context {
    
    //instance
    ACCNotebook *notebook = [NSEntityDescription insertNewObjectForEntityForName:[ACCNotebook entityName] inManagedObjectContext:context];
    
    notebook.name = name;
    notebook.creationDate = [NSDate date];
    notebook.modificationDate = [NSDate date];
    
    return notebook;
}

@end
