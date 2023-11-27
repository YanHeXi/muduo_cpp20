{
    files = {
        "Logger.cpp"
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
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/Logger.cpp.o: Logger.cpp\
build/.objs/cpp/linux/x86_64/release/Logger.cpp.o: Logger.c++m  /usr/include/c++/13.2.1/iostream.c++m Timestamp.c++m\
CXX_IMPORTS += Logger.c++m /usr/include/c++/13.2.1/iostream.c++m  Timestamp.c++m\
"
}