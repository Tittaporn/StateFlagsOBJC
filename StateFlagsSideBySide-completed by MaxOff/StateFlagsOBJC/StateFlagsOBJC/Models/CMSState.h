//
//  CMSState.h
//  StateFlagsOBJC
//
//  Created by Cameron Stuart on 9/28/20.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

// THIS IS OUR HEADER FILE - here we will state the properties and functions that we will hve on our State object.
@interface CMSState : NSObject

// Declare your properties - all properties should be non-atomic, all strings should be copy, readonly makes our property a constant (let), readwrite would make our property a variable (var). We need to state property type, give it a pointer if type is not a primetive type, and name the property.
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy, readonly) NSString *abbreviation;

// Declare any functions that we have, including an initializer

// - states this method will be an instance method, + would state that the method would be a class method.
// initWithName is the function name, plus the external name of the first parameter.
// (NSString *) is the parameter type, including pointer because NSString is a class.
// name is the internal paramter name.
- (instancetype) initWithName:(NSString *)name
                 abbreviation:(NSString *)abbreviation;

@end

NS_ASSUME_NONNULL_END
