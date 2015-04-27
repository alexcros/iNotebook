#import "_ACCNotebook.h"

@interface ACCNotebook : _ACCNotebook {}
// Custom logic goes here.

+(instancetype) notebookWithName:(NSString*) name
                         context:(NSManagedObjectContext*) context;

@end
