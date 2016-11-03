# cargo install bindgen
# install clang 3.8.1, not 3.9.0 https://github.com/Yamakaky/rust-bindgen/issues/400
# http://llvm.org/releases/download.html
$env:LIBCLANG_PATH = "C:\Program Files\LLVM\lib"
$env:PATH = "C:\Program Files\LLVM\bin;$env:PATH"
$env:PATH = "$HOME\.cargo\bin;$env:PATH"
bindgen --output=src/lib.rs bindgen.h -- `
-I "C:\Program Files\MATLAB\R2016a\extern\include" `
-I "C:\Program Files (x86)\Windows Kits\10\Include\10.0.10240.0\ucrt" `
-D NDEBUG -D MX_COMPAT_32 -D MATLAB_MEX_FILE `
-fms-compatibility -fms-compatibility-version=1900