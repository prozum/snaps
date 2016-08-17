all:
	gcc --version
	g++ --version
	git clone -b release_38 --single-branch --depth 1 http://llvm.org/git/llvm.git llvm
	
	git clone -b release_38 --single-branch --depth 1 http://llvm.org/git/clang.git llvm/tools/clang
	git clone -b release_38 --single-branch --depth 1 http://llvm.org/git/polly.git llvm/tools/polly
	
	git clone -b release_38 --single-branch --depth 1 http://llvm.org/git/compiler-rt.git llvm/projects/compiler-rt
	git clone -b release_38 --single-branch --depth 1 http://llvm.org/git/openmp.git llvm/projects/openmp
	
	mkdir cmake-build
	cd cmake-build && \
	cmake -DLLVM_INCLUDE_EXAMPLES=false -DLLVM_INCLUDE_DOCS=false -DLLVM_INCLUDE_TESTS=false \
	      -DCLANG_BUILD_EXAMPLES=false -DCLANG_INCLUDE_DOCS=false -DCLANG_INCLUDE_TESTS=false \
		  -DLLVM_ENABLE_RTTI=true -DCMAKE_CXX_FLAGS="-std=c++11" \
	  	  -DBUILD_SHARED_LIBS=false -DCMAKE_INSTALL_PREFIX=/usr ../llvm/
	cd cmake-build && make -j 4

install:
	cd cmake-build && make install 
	sed -i 's/^if(CMAKE_TOOLCHAIN_FILE)/if(NOT CMAKE_TOOLCHAIN_FILE)\n  set(CMAKE_TOOLCHAIN_FILE $$ENV{SNAP}\/usr\/lib\/x86_64-linux-gnu\/cmake\/SnapToolchain.cmake)\nendif()\nif(CMAKE_TOOLCHAIN_FILE)/g' ../install/usr/share/cmake-3.5/Modules/CMakeDetermineSystem.cmake

clean:
	cd cmake-build && make clean
