// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to ACCPhoto.m instead.

#import "_ACCPhoto.h"

const struct ACCPhotoAttributes ACCPhotoAttributes = {
	.imageData = @"imageData",
};

const struct ACCPhotoRelationships ACCPhotoRelationships = {
	.notes = @"notes",
};

@implementation ACCPhotoID
@end

@implementation _ACCPhoto

+ (id)insertInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription insertNewObjectForEntityForName:@"Photo" inManagedObjectContext:moc_];
}

+ (NSString*)entityName {
	return @"Photo";
}

+ (NSEntityDescription*)entityInManagedObjectContext:(NSManagedObjectContext*)moc_ {
	NSParameterAssert(moc_);
	return [NSEntityDescription entityForName:@"Photo" inManagedObjectContext:moc_];
}

- (ACCPhotoID*)objectID {
	return (ACCPhotoID*)[super objectID];
}

+ (NSSet*)keyPathsForValuesAffectingValueForKey:(NSString*)key {
	NSSet *keyPaths = [super keyPathsForValuesAffectingValueForKey:key];

	return keyPaths;
}

@dynamic imageData;

@dynamic notes;

@end

