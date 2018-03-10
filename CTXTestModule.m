#import "CTXTestModule.h"


@interface CLLocationManager ()
+ (BOOL)locationServicesEnabled;
+ (void)setLocationServicesEnabled:(BOOL) newValue;
@end

@interface UIImage ()
+ (UIImage *)imageNamed:(NSString *)name inBundle:(NSBundle *)bundle;
@end

@implementation CTXTestModule 
- (UIImage *)iconGlyph {
	return [UIImage imageNamed:@"Icon" inBundle:[NSBundle bundleForClass:[self class]]];
}

- (UIColor *)selectedColor {
	return [UIColor purpleColor];
}

- (BOOL)isSelected {
	[CLLocationManager setLocationServicesEnabled:NO];
	return self.fakeEnabledSetting;
}

- (void)setSelected:(BOOL)selected {
	self.fakeEnabledSetting = selected;
	[CLLocationManager setLocationServicesEnabled:YES];
	[super refreshState];
	
}
@end