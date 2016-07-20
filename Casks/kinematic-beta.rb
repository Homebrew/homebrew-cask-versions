cask 'kinematic-beta' do
  version '0.12.0'
  sha256 '161d702e25cfda4337c5f9b1315ad1487b287cd581e8951caee7ff529595370c'

  # github.com/docker/kitematic was verified as official when first introduced to the cask
  url "https://github.com/docker/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  name 'Kinematic'
  homepage 'https://kitematic.com/'
  license :apache

  app 'Kitematic (Beta).app'

  zap delete: '~/Library/Application\ Support/Kitematic'
end
