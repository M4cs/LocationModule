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
	[CLLocationManager setLocationServicesDisabled:TRUE];
	return self.ezlocation;
}

- (void)setSelected:(BOOL)selected {
	self.ezlocation = selected;
	[CLLocationManager setLocationServicesEnabled:TRUE];
	[super refreshState];
	
}
@end