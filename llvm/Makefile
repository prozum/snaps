all:
	git clone -b release_38 --single-branch --depth 1 http://llvm.org/git/llvm.git llvm
	
	git clone -b release_38 --single-branch --depth 1 http://llvm.org/git/clang.git llvm/tools/clang
	git clone -b release_38 --single-branch --depth 1 http://llvm.org/git/polly.git llvm/tools/polly
	
	git clone -b release_38 --single-branch --depth 1 http://llvm.org/git/compiler-rt.git llvm/projects/compiler-rt
	git clone -b release_38 --single-branch --depth 1 http://llvm.org/git/openmp.git llvm/projects/openmp
	
	mkdir cmake-build
	cd cmake-build && \
	cmake -DCLANG_BUILD_EXAMPLES=false -DCLANG_INCLUDE_DOCS=false -DCLANG_INCLUDE_TESTS=false -DCLANG_INCLUDE_DOCS=false \
	      -DCLANG_BUILD_EXAMPLES=false -DLLVM_INCLUDE_EXAMPLES=false -DLLVM_INCLUDE_DOCS=false -DLLVM_INCLUDE_TESTS=false \
		  -DLLVM_ENABLE_RTTI=true \
	  	  -DBUILD_SHARED_LIBS=false -DCMAKE_INSTALL_PREFIX=/usr ../llvm/
	cd cmake-build && make -j 4

install:
	cd cmake-build && make install 

clean:
	cd cmake-build && make clean
