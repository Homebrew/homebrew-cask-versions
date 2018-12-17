cask 'cuda-driver' do
  version '410.130'
  sha256 'c1508ca7d21d5d52f556165676e040ec7e0a3101ed3064f4c47bd393f46d1657'

  url "http://us.download.nvidia.com/Mac/cuda_410/cudadriver_#{version}_macos.dmg"
  name 'NVIDIA CUDA Driver'
  homepage 'https://www.nvidia.com/object/mac-driver-archive.html'

  pkg 'CUDADriver.pkg'

  uninstall pkgutil: 'com.nvidia.cuda.kext.pkg'
end
