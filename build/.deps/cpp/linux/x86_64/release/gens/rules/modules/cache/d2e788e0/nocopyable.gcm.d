{
    depfiles_gcc = "build/.objs/cpp/linux/x86_64/release/nocopyable.ixx.o  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/nocopyable.gcm:  nocopyable.ixx\
nocopyable.c++m:  /home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/nocopyable.gcm\
.PHONY: nocopyable.c++m\
/home/yanhexi/Downloads/test/build/.gens/cpp/linux/x86_64/release/rules/modules/cache/d2e788e0/nocopyable.gcm:|  build/.objs/cpp/linux/x86_64/release/nocopyable.ixx.o\
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
        "nocopyable.ixx"
    }
}