{
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
    },
    files = {
        "TcpServer.ixx"
    },
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/TcpServer.ixx.o: TcpServer.ixx\
"
}