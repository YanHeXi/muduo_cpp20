{
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/InetAddress.ixx.o  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/InetAddress.gcm:  InetAddress.ixx\
build/.objs/cpp/linux/x86_64/release/InetAddress.ixx.o  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/InetAddress.gcm:  /usr/include/c++/13.2.1/string.c++m /usr/include/netinet/in.h.c++m  /usr/include/arpa/inet.h.c++m\
InetAddress.c++m:  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/InetAddress.gcm\
.PHONY: InetAddress.c++m\
/home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/InetAddress.gcm:|  build/.objs/cpp/linux/x86_64/release/InetAddress.ixx.o\
CXX_IMPORTS += /usr/include/c++/13.2.1/string.c++m  /usr/include/netinet/in.h.c++m /usr/include/arpa/inet.h.c++m\
",
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
        "InetAddress.ixx"
    }
}