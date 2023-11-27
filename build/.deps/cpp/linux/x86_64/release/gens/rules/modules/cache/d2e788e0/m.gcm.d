{
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
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/m.ixx.o  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/m.gcm:  m.ixx\
build/.objs/cpp/linux/x86_64/release/m.ixx.o  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/m.gcm:  /usr/include/c++/13.2.1/vector.c++m /usr/include/c++/13.2.1/string.c++m  /usr/include/c++/13.2.1/iostream.c++m\
m.c++m:  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/m.gcm\
.PHONY: m.c++m\
/home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/m.gcm:|  build/.objs/cpp/linux/x86_64/release/m.ixx.o\
CXX_IMPORTS += /usr/include/c++/13.2.1/vector.c++m  /usr/include/c++/13.2.1/string.c++m  /usr/include/c++/13.2.1/iostream.c++m\
",
    files = {
        "m.ixx"
    }
}