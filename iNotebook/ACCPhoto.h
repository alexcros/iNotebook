#import "_ACCPhoto.h"

@interface ACCPhoto : _ACCPhoto {}
// Custom logic goes here.
@property (nonatomic,strong)UIImage *image;

+(instancetype) photoWithImage:(UIImage*) image
                        context:(NSManagedObjectContext*) context;

@end
