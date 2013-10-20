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
void MREP_A0B514CFDEEC422C807F92378579E3ED(void *, void *);
void MREP_ADC5CE4EB8A646799DB9CB30BB386CE3(void *, void *);
void MREP_F4DBB97F81674B8FBDBA5D1E7B991521(void *, void *);
void MREP_5301897155D848EAA5CC022042270C92(void *, void *);
void MREP_49DE0CABCA4C4A89AB76AC0D60EE0A25(void *, void *);
void MREP_871B21D48D3247189C9205C8B6B5B70F(void *, void *);
void MREP_1EF868E7FD4B479A87C75E9F92C94955(void *, void *);
void MREP_496248613D3941F7A367A86D5E174EA3(void *, void *);
void MREP_3A36A00408AB47E791C91E51B55EFD2C(void *, void *);
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
MREP_A0B514CFDEEC422C807F92378579E3ED(self, 0);
MREP_ADC5CE4EB8A646799DB9CB30BB386CE3(self, 0);
MREP_F4DBB97F81674B8FBDBA5D1E7B991521(self, 0);
MREP_5301897155D848EAA5CC022042270C92(self, 0);
MREP_49DE0CABCA4C4A89AB76AC0D60EE0A25(self, 0);
MREP_871B21D48D3247189C9205C8B6B5B70F(self, 0);
MREP_1EF868E7FD4B479A87C75E9F92C94955(self, 0);
MREP_496248613D3941F7A367A86D5E174EA3(self, 0);
MREP_3A36A00408AB47E791C91E51B55EFD2C(self, 0);
#if !__LP64__
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
#endif
	initialized = true;
    }
}
