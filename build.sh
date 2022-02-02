#MKL_DIR=/opt/intel/oneapi/mkl/latest/ 
#MLAS_DIR=/opt/mlas/
cmake -GNinja \
    -DCMAKE_CXX_COMPILER=clang++-11 \
    -DCMAKE_C_COMPILER=clang-11 \
    -DMKL_DIR=/opt/intel/oneapi/mkl/latest/ \
    -DMLAS_DIR=/opt/mlas/ \
    -DUSE_IREE=ON \
    -DUSE_MKL=ON \
    -DUSE_MLAS=ON \
    -DUSE_IREE_LLVM_SANDBOX=ON \
    -B build .

cmake --build build
