{
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
    files = {
        "EventLoop.cpp"
    },
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/EventLoop.cpp.o: EventLoop.cpp\
"
}