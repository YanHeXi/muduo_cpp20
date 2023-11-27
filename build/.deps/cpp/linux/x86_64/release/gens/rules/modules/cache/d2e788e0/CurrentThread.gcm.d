{
    files = {
        "CurrentThread.ixx"
    },
    values = {
        "/usr/bin/gcc",
        {
            "-x",
            "c++",
            "-m64",
            "-std=c++20",
            "-fmodules-ts",
            "-fmodule-mapper=build/cpp/mapper.txt",
            "-D_GLIBCXX_USE_CXX11_ABI=0"
        }
    },
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/CurrentThread.ixx.o  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/CurrentThread.gcm:  CurrentThread.ixx\
build/.objs/cpp/linux/x86_64/release/CurrentThread.ixx.o  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/CurrentThread.gcm:  /usr/include/sys/syscall.h.c++m /usr/include/unistd.h.c++m\
CurrentThread.c++m:  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/CurrentThread.gcm\
.PHONY: CurrentThread.c++m\
/home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/CurrentThread.gcm:|  build/.objs/cpp/linux/x86_64/release/CurrentThread.ixx.o\
CXX_IMPORTS += /usr/include/sys/syscall.h.c++m /usr/include/unistd.h.c++m\
"
}