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
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/c.cpp.o: c.cpp\
build/.objs/cpp/linux/x86_64/release/c.cpp.o: m.c++m  /usr/include/c++/13.2.1/string.c++m  /usr/include/c++/13.2.1/iostream.c++m\
CXX_IMPORTS += m.c++m /usr/include/c++/13.2.1/string.c++m  /usr/include/c++/13.2.1/iostream.c++m\
",
    files = {
        "c.cpp"
    }
}