%module javaupm_ds1808lc
%include "../upm.i"

#if SWIG_VERSION >= 0x030009
%include "../interfaces/javaupm_iLightController.i"
#endif

%include "arrays_java.i";
%include "../java_buffer.i"
%include "cpointer.i"
%include "typemaps.i"

%{
    #include "ds1808lc.hpp"
%}

%include "ds1808lc.hpp"

%pragma(java) jniclasscode=%{
    static {
        try {
            System.loadLibrary("javaupm_ds1808lc");
        } catch (UnsatisfiedLinkError e) {
            System.err.println("Native code library failed to load. \n" + e);
            System.exit(1);
        }
    }
%}
