cask :v1 => 'cuda-z-beta' do
  version '0.9.230-SVN'
  sha256 '2498d7ed769b5587f3509ca4b9748f23983db6864026fa1a8d7be9dafc70e7c9'

  url 'https://downloads.sourceforge.net/project/cuda-z/cuda-z/Beta/CUDA-Z-0.9.230-SVN.dmg'
  homepage 'http://cuda-z.sourceforge.net'
  license :oss

  app 'Cuda-Z.app'
end
