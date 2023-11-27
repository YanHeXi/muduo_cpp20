{
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/InetAddress.cpp.o: InetAddress.cpp\
build/.objs/cpp/linux/x86_64/release/InetAddress.cpp.o: InetAddress.c++m  /usr/include/c++/13.2.1/string.c++m /usr/include/netinet/in.h.c++m  /usr/include/arpa/inet.h.c++m /usr/include/c++/13.2.1/cstring.c++m\
CXX_IMPORTS += InetAddress.c++m /usr/include/c++/13.2.1/string.c++m  /usr/include/netinet/in.h.c++m /usr/include/arpa/inet.h.c++m  /usr/include/c++/13.2.1/cstring.c++m\
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
    },
    files = {
        "InetAddress.cpp"
    }
}