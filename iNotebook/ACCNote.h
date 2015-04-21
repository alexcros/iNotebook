#import "_ACCNote.h"

@interface ACCNote : _ACCNote {}
// Custom logic goes here.

+(instancetype) noteWithName:(ACCNote*) name
                     context:(NSManagedObjectContext*) context;

@end
