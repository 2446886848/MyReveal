#line 1 "/Users/dafyit/Desktop/MyReveal/MyReveal/MyReveal.xm"
#import <Reveal/Reveal.h>

static __attribute__((constructor)) void _logosLocalCtor_2ad1cba6(int __unused argc, char __unused **argv, char __unused **envp) {
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    NSDictionary *prefs = [[NSDictionary dictionaryWithContentsOfFile:@"/var/mobile/Library/Preferences/com.rheard.RHRevealLoader.plist"] retain];

    NSNumber *on = [prefs objectForKey:[NSString stringWithFormat:@"RHRevealEnabled-%@", [[NSBundle mainBundle] bundleIdentifier]]];
    if(!on || ![on boolValue]) {
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            [IBARevealLoader stopServer];
        });
    }
    [pool drain];
}

