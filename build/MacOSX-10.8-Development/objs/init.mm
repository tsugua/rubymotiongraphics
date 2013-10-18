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
void MREP_8FE72A84159142538DFFEEA30EDCC49E(void *, void *);
void MREP_BAB2790B05EF4EC4B8B25150CF5741E4(void *, void *);
void MREP_8EE808E6F68D48BE9534621ADDBA338C(void *, void *);
void MREP_CF16351E708749CD9FB403D12A708865(void *, void *);
void MREP_97381C6D90664E92BB22590E97C741A9(void *, void *);
void MREP_D74D10B79D7B4A6CA91D1A4443E841F5(void *, void *);
void MREP_5533F53ED25B4B979F6B21BA99245DBF(void *, void *);
void MREP_6ED5174519374851878A6BB95A1B0B7F(void *, void *);
void MREP_5F18C345694046E1BD49DF1C6D7EFEF3(void *, void *);
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
MREP_8FE72A84159142538DFFEEA30EDCC49E(self, 0);
MREP_BAB2790B05EF4EC4B8B25150CF5741E4(self, 0);
MREP_8EE808E6F68D48BE9534621ADDBA338C(self, 0);
MREP_CF16351E708749CD9FB403D12A708865(self, 0);
MREP_97381C6D90664E92BB22590E97C741A9(self, 0);
MREP_D74D10B79D7B4A6CA91D1A4443E841F5(self, 0);
MREP_5533F53ED25B4B979F6B21BA99245DBF(self, 0);
MREP_6ED5174519374851878A6BB95A1B0B7F(self, 0);
MREP_5F18C345694046E1BD49DF1C6D7EFEF3(self, 0);
#if !__LP64__
	}
	catch (...) {
	    rb_rb2oc_exc_handler();
	}
#endif
	initialized = true;
    }
}
