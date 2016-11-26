cask 'cuda-z-beta' do
  version '0.11.259-SVN'
  sha256 '93e15644136fa7a04d6ad77d47afe3baaf5728f32d0d1814e5e01b7df4021b23'

  url "https://downloads.sourceforge.net/cuda-z/cuda-z/Beta/CUDA-Z-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/cuda-z/rss?path=/cuda-z/Beta',
          checkpoint: '64c18ee82db789664bc5aefe2981c8f5672bf656a4ca8d6497a91d7c36ad5f1c'
  name 'CUDA-Z'
  homepage 'http://cuda-z.sourceforge.net/'

  app 'Cuda-Z.app'
end
