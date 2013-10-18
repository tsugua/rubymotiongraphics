#import <AppKit/AppKit.h>

extern "C" {
    void rb_define_global_const(const char *, void *);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
    void RubyMotionInit(int argc, char **argv);
}
int
main(int argc, char **argv)
{
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    RubyMotionInit(argc, argv);
    NSApplication *app = [NSApplication sharedApplication];
    [app setDelegate:[NSClassFromString(@"AppDelegate") new]];
    NSApplicationMain(argc, (const char **)argv);
    [pool release];
    rb_exit(0);
    return 0;
}
