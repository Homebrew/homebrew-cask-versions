cask :v1 => 'cuda-z-beta' do
  version '0.10.244-SVN'
  sha256 'd449e55f0c3c6110df03efe978c37891698d8a0d1eebc9dc76954bc8384e6ef3'

  url 'https://downloads.sourceforge.net/project/cuda-z/cuda-z/Beta/CUDA-Z-#{version}.dmg'
  homepage 'http://cuda-z.sourceforge.net'
  license :oss

  app 'Cuda-Z.app'
end
