cask 'cuda-z-beta' do
  version '0.11.259-SVN'
  sha256 '93e15644136fa7a04d6ad77d47afe3baaf5728f32d0d1814e5e01b7df4021b23'

  url "https://downloads.sourceforge.net/project/cuda-z/cuda-z/Beta/CUDA-Z-#{version}.dmg"
  name 'CUDA-Z'
  homepage 'http://cuda-z.sourceforge.net'
  license :gpl

  app 'Cuda-Z.app'
end
