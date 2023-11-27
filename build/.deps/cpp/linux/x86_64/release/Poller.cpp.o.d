{
    files = {
        "Poller.cpp"
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
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/Poller.cpp.o: Poller.cpp\
build/.objs/cpp/linux/x86_64/release/Poller.cpp.o: Poller.c++m  Channel.c++m\
CXX_IMPORTS += Poller.c++m Channel.c++m\
"
}