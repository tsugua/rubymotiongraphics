extern "C" {
    void ruby_sysinit(int *, char ***);
    void ruby_init(void);
    void ruby_init_loadpath(void);
    void ruby_script(const char *);
    void ruby_set_argv(int, char **);
    void rb_vm_init_compiler(void);
    void rb_vm_init_jit(void);
    void rb_vm_aot_feature_provide(const char *, void *);
    void *rb_vm_top_self(void);
    void rb_define_global_const(const char *, void *);
    void rb_rb2oc_exc_handler(void);
    void rb_exit(int);
void MREP_A7BE11EF1460486CBBBB8EF9DED19D16(void *, void *);
void MREP_85C36E7153F8417BAD262E8A793B403E(void *, void *);
void MREP_6AD1CA462410436F9BAC215647766989(void *, void *);
void MREP_1FDA253D014E48C89D4AE4923EAF4E40(void *, void *);
void MREP_3DE1AAC0FDE04ECB934F75A632F401BA(void *, void *);
void MREP_1BF2D31A9CBB4A29AC8E93B140F11399(void *, void *);
void MREP_C630BE3CC2EA470CBD44AB6E6DE7D602(void *, void *);
void MREP_7F932D4B3021496FA5161050E3DD863D(void *, void *);
}

extern "C"
void
RubyMotionInit(int argc, char **argv)
{
    static bool initialized = false;
    if (!initialized) {
	ruby_init();
	ruby_init_loadpath();
        if (argc > 0) {
	    const char *progname = argv[0];
	    ruby_script(progname);
	}
#if !__LP64__
	try {
#endif
	    void *self = rb_vm_top_self();
rb_define_global_const("RUBYMOTION_ENV", @"development");
rb_define_global_const("RUBYMOTION_VERSION", @"2.11");
MREP_A7BE11EF1460486CBBBB8EF9DED19D16(self, 0);
MREP_85C36E7153F8417BAD262E8A793B403E(self, 0);
MREP_6AD1CA462410436F9BAC215647766989(self, 0);
MREP_1FDA253D014E48C89D4AE4923EAF4E40(self, 0);
MREP_3DE1AAC0FDE04ECB934F75A632F401BA(self, 0);
MREP_1BF2D31A9CBB4A29AC8E93B140F11399(self, 0);
MREP_C630BE3CC2EA470CBD44AB6E6DE7D602(self, 0);
MREP_7F932D4B3021496FA5161050E3DD863D(self, 0);
#if !__LP64__
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
#endif
	initialized = true;
    }
}
