#import "ACCPhoto.h"

@interface ACCPhoto ()

// Private interface goes here.

@end

@implementation ACCPhoto

//@synthesize image = _image;

#pragma mark - Properties
-(void) setImage:(UIImage *)image {
 
    // saving iVar
    //_image = image;
    
    // synchcronize with imageData
    self.imageData = UIImagePNGRepresentation(image);
    
}

-(UIImage*) image {
    //
      return [UIImage imageWithData:self.imageData];
}

#pragma mark - Class Methods
+(instancetype) photoWithImage:(UIImage*) image	
                       context:(NSManagedObjectContext*) context {
    
    ACCPhoto *photo = [NSEntityDescription insertNewObjectForEntityForName:[ACCPhoto entityName] inManagedObjectContext:context];
    
    //photo.imageData = UIImagePNGRepresentation(image);
    photo.imageData = UIImageJPEGRepresentation(image, 0.9);
    
    return photo;
}

@end
