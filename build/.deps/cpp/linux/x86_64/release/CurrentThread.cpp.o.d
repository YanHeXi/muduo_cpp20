{
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/CurrentThread.cpp.o:  CurrentThread.cpp\
build/.objs/cpp/linux/x86_64/release/CurrentThread.cpp.o:  CurrentThread.c++m\
CXX_IMPORTS += CurrentThread.c++m\
",
    files = {
        "CurrentThread.cpp"
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