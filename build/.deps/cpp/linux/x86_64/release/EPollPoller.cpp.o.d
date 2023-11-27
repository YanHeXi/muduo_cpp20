{
    files = {
        "EPollPoller.cpp"
    },
    values = {
        "/usr/bin/gcc",
        {
            "-m64",
            "-std=c++20",
            "-fmodules-ts",
            "-fmodule-mapper=build/cpp/mapper.txt",
            "-D_GLIBCXX_USE_CXX11_ABI=0"
        }
    },
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/EPollPoller.cpp.o: EPollPoller.cpp\
build/.objs/cpp/linux/x86_64/release/EPollPoller.cpp.o: EPollPoller.c++m  /usr/include/sys/epoll.h.c++m Poller.c++m /usr/include/strings.h.c++m  Logger.c++m Channel.c++m /usr/include/unistd.h.c++m  /usr/include/c++/13.2.1/cstring.c++m /usr/include/c++/13.2.1/cerrno.c++m  Timestamp.c++m\
CXX_IMPORTS += EPollPoller.c++m /usr/include/sys/epoll.h.c++m Poller.c++m  /usr/include/strings.h.c++m Logger.c++m Channel.c++m  /usr/include/unistd.h.c++m /usr/include/c++/13.2.1/cstring.c++m  /usr/include/c++/13.2.1/cerrno.c++m Timestamp.c++m\
"
}