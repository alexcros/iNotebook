// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ACCNote.h instead.

#import <CoreData/CoreData.h>
#import "ACCNamedEntity.h"

extern const struct ACCNoteAttributes {
	__unsafe_unretained NSString *text;
} ACCNoteAttributes;

extern const struct ACCNoteRelationships {
	__unsafe_unretained NSString *notebook;
	__unsafe_unretained NSString *photo;
} ACCNoteRelationships;

@class ACCNotebook;
@class ACCPhoto;

@interface ACCNoteID : ACCNamedEntityID {}
@end

@interface _ACCNote : ACCNamedEntity {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) ACCNoteID* objectID;

@property (nonatomic, strong) NSString* text;

//- (BOOL)validateText:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) ACCNotebook *notebook;

//- (BOOL)validateNotebook:(id*)value_ error:(NSError**)error_;

@property (nonatomic, strong) ACCPhoto *photo;

//- (BOOL)validatePhoto:(id*)value_ error:(NSError**)error_;

@end

@interface _ACCNote (CoreDataGeneratedPrimitiveAccessors)

- (NSString*)primitiveText;
- (void)setPrimitiveText:(NSString*)value;

- (ACCNotebook*)primitiveNotebook;
- (void)setPrimitiveNotebook:(ACCNotebook*)value;

- (ACCPhoto*)primitivePhoto;
- (void)setPrimitivePhoto:(ACCPhoto*)value;

@end
