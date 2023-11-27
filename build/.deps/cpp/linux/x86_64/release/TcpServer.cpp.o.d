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
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/TcpServer.cpp.o: TcpServer.cpp\
build/.objs/cpp/linux/x86_64/release/TcpServer.cpp.o: TcpServer.c++m\
CXX_IMPORTS += TcpServer.c++m\
",
    files = {
        "TcpServer.cpp"
    }
}