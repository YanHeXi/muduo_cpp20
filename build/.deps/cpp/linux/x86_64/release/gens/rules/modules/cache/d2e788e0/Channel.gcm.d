{
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/Channel.ixx.o  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/Channel.gcm:  Channel.ixx\
build/.objs/cpp/linux/x86_64/release/Channel.ixx.o  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/Channel.gcm:  /usr/include/c++/13.2.1/functional.c++m  /usr/include/c++/13.2.1/memory.c++m nocopyable.c++m Timestamp.c++m\
Channel.c++m:  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/Channel.gcm\
.PHONY: Channel.c++m\
/home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/Channel.gcm:|  build/.objs/cpp/linux/x86_64/release/Channel.ixx.o\
CXX_IMPORTS += /usr/include/c++/13.2.1/functional.c++m  /usr/include/c++/13.2.1/memory.c++m nocopyable.c++m Timestamp.c++m\
",
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
    files = {
        "Channel.ixx"
    }
}