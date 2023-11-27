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
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/Logger.ixx.o  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/Logger.gcm:  Logger.ixx\
build/.objs/cpp/linux/x86_64/release/Logger.ixx.o  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/Logger.gcm:  /usr/include/c++/13.2.1/string.c++m  /usr/include/c++/13.2.1/iostream.c++m nocopyable.c++m\
Logger.c++m:  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/Logger.gcm\
.PHONY: Logger.c++m\
/home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/Logger.gcm:|  build/.objs/cpp/linux/x86_64/release/Logger.ixx.o\
CXX_IMPORTS += /usr/include/c++/13.2.1/string.c++m  /usr/include/c++/13.2.1/iostream.c++m nocopyable.c++m\
",
    files = {
        "Logger.ixx"
    }
}