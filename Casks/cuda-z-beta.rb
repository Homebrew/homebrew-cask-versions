cask 'cuda-z-beta' do
  version '0.11.259-SVN'
  sha256 '93e15644136fa7a04d6ad77d47afe3baaf5728f32d0d1814e5e01b7df4021b23'

  url "https://downloads.sourceforge.net/cuda-z/cuda-z/Beta/CUDA-Z-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/cuda-z/rss?path=/cuda-z/Beta'
  name 'CUDA-Z'
  homepage 'http://cuda-z.sourceforge.net/'

  app 'Cuda-Z.app'
end
