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
        "DefaultPoller.cpp"
    },
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/DefaultPoller.cpp.o:  DefaultPoller.cpp\
build/.objs/cpp/linux/x86_64/release/DefaultPoller.cpp.o:  EPollPoller.c++m Poller.c++m /usr/include/c++/13.2.1/cstdlib.c++m\
CXX_IMPORTS += EPollPoller.c++m Poller.c++m  /usr/include/c++/13.2.1/cstdlib.c++m\
"
}