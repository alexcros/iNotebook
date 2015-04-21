#import "_ACCNotebook.h"

@interface ACCNotebook : _ACCNotebook {}
// Custom logic goes here.

+(instancetype) notebookWithName:(NSString*) name
                        notebook:(ACCNotebook*) notebook
                         context:(NSManagedObjectContext*) context;

@end
