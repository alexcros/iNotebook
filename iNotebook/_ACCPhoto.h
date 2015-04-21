// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ACCPhoto.h instead.

#import <CoreData/CoreData.h>

extern const struct ACCPhotoAttributes {
	__unsafe_unretained NSString *imageData;
} ACCPhotoAttributes;

extern const struct ACCPhotoRelationships {
	__unsafe_unretained NSString *notes;
} ACCPhotoRelationships;

@class ACCNote;

@interface ACCPhotoID : NSManagedObjectID {}
@end

@interface _ACCPhoto : NSManagedObject {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) ACCPhotoID* objectID;

@property (nonatomic, strong) NSData* imageData;

//- (BOOL)validateImageData:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) ACCNote *notes;

//- (BOOL)validateNotes:(id*)value_ error:(NSError**)error_;

@end

@interface _ACCPhoto (CoreDataGeneratedPrimitiveAccessors)

- (NSData*)primitiveImageData;
- (void)setPrimitiveImageData:(NSData*)value;

- (ACCNote*)primitiveNotes;
- (void)setPrimitiveNotes:(ACCNote*)value;

@end
