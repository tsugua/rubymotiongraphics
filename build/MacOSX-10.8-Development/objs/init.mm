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
void MREP_133A797AF38743AABB45236876CCA3B7(void *, void *);
void MREP_923BA7AC830D46D595216C612FD3C621(void *, void *);
void MREP_5A6ECBB3816F4A93AE8A5B88418C33D5(void *, void *);
void MREP_49DE0CABCA4C4A89AB76AC0D60EE0A25(void *, void *);
void MREP_871B21D48D3247189C9205C8B6B5B70F(void *, void *);
void MREP_43B4D5D0E0ED46C7BAC63A613CF409B8(void *, void *);
void MREP_DC87178F59E04544ABDA571AE94B9E84(void *, void *);
void MREP_EACEE7C1BA854A9792D600A153F6E499(void *, void *);
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
MREP_133A797AF38743AABB45236876CCA3B7(self, 0);
MREP_923BA7AC830D46D595216C612FD3C621(self, 0);
MREP_5A6ECBB3816F4A93AE8A5B88418C33D5(self, 0);
MREP_49DE0CABCA4C4A89AB76AC0D60EE0A25(self, 0);
MREP_871B21D48D3247189C9205C8B6B5B70F(self, 0);
MREP_43B4D5D0E0ED46C7BAC63A613CF409B8(self, 0);
MREP_DC87178F59E04544ABDA571AE94B9E84(self, 0);
MREP_EACEE7C1BA854A9792D600A153F6E499(self, 0);
#if !__LP64__
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
#endif
	initialized = true;
    }
}
