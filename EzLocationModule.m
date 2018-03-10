#import "EzLocationModule.h"


@interface CLLocationManager ()
+ (BOOL)locationServicesEnabled;
+ (void)setLocationServicesEnabled:(BOOL) newValue;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation EzLocationModule 
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return [UIColor purpleColor];
}

- (BOOL)isSelected {
<<<<<<< HEAD
	[CLLocationManager setLocationServicesEnabled:false];
=======
	[CLLocationManager setLocationServicesEnabled:true];
>>>>>>> f7c3424b8e7a942a00b90eab5cf0559d496899df
	return self.ezlocation;
}

- (void)setSelected:(BOOL)selected {
	self.ezlocation = selected;
<<<<<<< HEAD
	[CLLocationManager setLocationServicesEnabled:true];
=======
	[CLLocationManager setLocationServicesEnabled:false];
>>>>>>> f7c3424b8e7a942a00b90eab5cf0559d496899df
	[super refreshState];
	
}
@end