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
        "EPollPoller.ixx"
    },
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/EPollPoller.ixx.o  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/EPollPoller.gcm:  EPollPoller.ixx\
build/.objs/cpp/linux/x86_64/release/EPollPoller.ixx.o  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/EPollPoller.gcm:  /usr/include/c++/13.2.1/vector.c++m Poller.c++m Channel.c++m  /usr/include/sys/epoll.h.c++m Timestamp.c++m\
EPollPoller.c++m:  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/EPollPoller.gcm\
.PHONY: EPollPoller.c++m\
/home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/EPollPoller.gcm:|  build/.objs/cpp/linux/x86_64/release/EPollPoller.ixx.o\
CXX_IMPORTS += /usr/include/c++/13.2.1/vector.c++m Poller.c++m  Channel.c++m /usr/include/sys/epoll.h.c++m Timestamp.c++m\
"
}