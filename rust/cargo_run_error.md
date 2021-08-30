root@orangepi3:~/rust/hello2# cargo run
   Compiling hello2 v0.1.0 (/root/rust/hello2)
error: linking with `cc` failed: exit status: 1
  |
  = note: "cc" "/root/rust/hello2/target/debug/deps/hello2-b3f7fe9a118a0776.2fhlwpfhcwb2d2ab.rcgu.o" "/root/rust/hello2/target/debug/deps/hello2-b3f7fe9a118a0776.34tzs32fn4s86uxc.rcgu.o" "/root/rust/hello2/target/debug/deps/hello2-b3f7fe9a118a0776.3cv6ptfqmnj07qxj.rcgu.o" "/root/rust/hello2/target/debug/deps/hello2-b3f7fe9a118a0776.3ljs9jlnrhq9wryy.rcgu.o" "/root/rust/hello2/target/debug/deps/hello2-b3f7fe9a118a0776.413uzv0ad43tz962.rcgu.o" "/root/rust/hello2/target/debug/deps/hello2-b3f7fe9a118a0776.47lsn7lg8qqqkd2p.rcgu.o" "/root/rust/hello2/target/debug/deps/hello2-b3f7fe9a118a0776.523697r0gnn9ffcb.rcgu.o" "/root/rust/hello2/target/debug/deps/hello2-b3f7fe9a118a0776.twyjy58kp62vei0.rcgu.o" "/root/rust/hello2/target/debug/deps/hello2-b3f7fe9a118a0776.1dilqfk3frssxz4p.rcgu.o" "-Wl,--as-needed" "-L" "/root/rust/hello2/target/debug/deps" "-L" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib" "-Wl,--start-group" "-Wl,-Bstatic" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/libstd-9dae00b760dc99a8.rlib" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/libpanic_unwind-37305a345dbd2c75.rlib" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/libminiz_oxide-68166857e8d1f9c7.rlib" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/libadler-ce405817170fe012.rlib" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/libobject-6ccddb64fb5528ce.rlib" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/libaddr2line-9c8941107f184f7f.rlib" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/libgimli-71fb0ed0964e02f8.rlib" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/libstd_detect-2a1cca1288f46c05.rlib" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/librustc_demangle-1140c46b32718b9c.rlib" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/libhashbrown-e880814eac21241d.rlib" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/librustc_std_workspace_alloc-b14923eac6cc98f4.rlib" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/libunwind-99f7a52c734c0d60.rlib" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/libcfg_if-2c1ee0bd84181e99.rlib" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/liblibc-57170645266e92d0.rlib" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/liballoc-9c59a6d3e4aed47d.rlib" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/librustc_std_workspace_core-6a1cbdb39879fa8f.rlib" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/libcore-a3c1b8a3939148aa.rlib" "-Wl,--end-group" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib/libcompiler_builtins-ff5728d8f2de244b.rlib" "-Wl,-Bdynamic" "-lgcc_s" "-lutil" "-lrt" "-lpthread" "-lm" "-ldl" "-lc" "-Wl,--eh-frame-hdr" "-Wl,-znoexecstack" "-L" "/root/.rustup/toolchains/stable-aarch64-unknown-linux-gnu/lib/rustlib/aarch64-unknown-linux-gnu/lib" "-o" "/root/rust/hello2/target/debug/deps/hello2-b3f7fe9a118a0776" "-Wl,--gc-sections" "-pie" "-Wl,-zrelro" "-Wl,-znow" "-nodefaultlibs"
  = note: /usr/bin/ld: cannot find Scrt1.o: No such file or directory
          /usr/bin/ld: cannot find crti.o: No such file or directory
          collect2: error: ld returned 1 exit status


error: aborting due to previous error

error: could not compile `hello2`

To learn more, run the command again with --verbose.






解决办法
apt-get install libc6-dev
