{
    files = {
        "Timestamp.cpp"
    },
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/Timestamp.cpp.o: Timestamp.cpp\
build/.objs/cpp/linux/x86_64/release/Timestamp.cpp.o:  /usr/include/c++/13.2.1/ctime.c++m /usr/include/c++/13.2.1/string.c++m  Timestamp.c++m\
CXX_IMPORTS += /usr/include/c++/13.2.1/ctime.c++m  /usr/include/c++/13.2.1/string.c++m Timestamp.c++m\
",
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