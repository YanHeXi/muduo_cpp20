{
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/Channel.cpp.o: Channel.cpp\
build/.objs/cpp/linux/x86_64/release/Channel.cpp.o: Logger.c++m  Channel.c++m /usr/include/sys/epoll.h.c++m Timestamp.c++m\
CXX_IMPORTS += Logger.c++m Channel.c++m /usr/include/sys/epoll.h.c++m  Timestamp.c++m\
",
    files = {
        "Channel.cpp"
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
    }
}