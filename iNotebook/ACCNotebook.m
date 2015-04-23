#import "ACCNotebook.h"

@interface ACCNotebook ()

+(NSArray*) observableKeyNames;

@end

@implementation ACCNotebook

+(NSArray*) observableKeyNames {
    
    return @[@"creationDate", @"name", @"notes"];
}

+(instancetype) notebookWithName:(NSString*) name
                        notebook:(ACCNotebook*) notebook
                         context:(NSManagedObjectContext*) context {
    
    //instance

    notebook.creationDate = [NSDate date];
    notebook.modificationDate = [NSDate date];
    
    return notebook;
}

@end
