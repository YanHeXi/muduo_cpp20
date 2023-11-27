{
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/EventLoop.ixx.o  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/EventLoop.gcm:  EventLoop.ixx\
build/.objs/cpp/linux/x86_64/release/EventLoop.ixx.o  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/EventLoop.gcm:  /usr/include/c++/13.2.1/mutex.c++m  /usr/include/c++/13.2.1/functional.c++m  /usr/include/c++/13.2.1/vector.c++m /usr/include/c++/13.2.1/memory.c++m  CurrentThread.c++m nocopyable.c++m /usr/include/c++/13.2.1/atomic.c++m  Timestamp.c++m\
EventLoop.c++m:  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/EventLoop.gcm\
.PHONY: EventLoop.c++m\
/home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/EventLoop.gcm:|  build/.objs/cpp/linux/x86_64/release/EventLoop.ixx.o\
CXX_IMPORTS += /usr/include/c++/13.2.1/mutex.c++m  /usr/include/c++/13.2.1/functional.c++m  /usr/include/c++/13.2.1/vector.c++m /usr/include/c++/13.2.1/memory.c++m  CurrentThread.c++m nocopyable.c++m /usr/include/c++/13.2.1/atomic.c++m  Timestamp.c++m\
",
    files = {
        "EventLoop.ixx"
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
    }
}