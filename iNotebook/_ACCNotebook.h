// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ACCNotebook.h instead.

#import <CoreData/CoreData.h>
#import "ACCNamedEntity.h"

extern const struct ACCNotebookRelationships {
	__unsafe_unretained NSString *notes;
} ACCNotebookRelationships;

@class ACCNote;

@interface ACCNotebookID : ACCNamedEntityID {}
@end

@interface _ACCNotebook : ACCNamedEntity {}
+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_;
+ (NSString*)entityName;
+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_;
@property (nonatomic, readonly, strong) ACCNotebookID* objectID;

@property (nonatomic, strong) NSSet *notes;

- (NSMutableSet*)notesSet;

@end

@interface _ACCNotebook (NotesCoreDataGeneratedAccessors)
- (void)addNotes:(NSSet*)value_;
- (void)removeNotes:(NSSet*)value_;
- (void)addNotesObject:(ACCNote*)value_;
- (void)removeNotesObject:(ACCNote*)value_;

@end

@interface _ACCNotebook (CoreDataGeneratedPrimitiveAccessors)

- (NSMutableSet*)primitiveNotes;
- (void)setPrimitiveNotes:(NSMutableSet*)value;

@end
