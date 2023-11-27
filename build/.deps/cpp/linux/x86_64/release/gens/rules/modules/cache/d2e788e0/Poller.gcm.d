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
    files = {
        "Poller.ixx"
    },
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/Poller.ixx.o  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/Poller.gcm:  Poller.ixx\
build/.objs/cpp/linux/x86_64/release/Poller.ixx.o  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/Poller.gcm:  /usr/include/c++/13.2.1/vector.c++m /usr/include/c++/13.2.1/cstdio.c++m  Channel.c++m nocopyable.c++m /usr/include/c++/13.2.1/unordered_map.c++m  Timestamp.c++m\
Poller.c++m:  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/Poller.gcm\
.PHONY: Poller.c++m\
/home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/Poller.gcm:|  build/.objs/cpp/linux/x86_64/release/Poller.ixx.o\
CXX_IMPORTS += /usr/include/c++/13.2.1/vector.c++m  /usr/include/c++/13.2.1/cstdio.c++m Channel.c++m nocopyable.c++m  /usr/include/c++/13.2.1/unordered_map.c++m Timestamp.c++m\
"
}