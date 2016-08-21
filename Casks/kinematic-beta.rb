cask 'kinematic-beta' do
  version '0.12.0'
  sha256 '0d6770197ed1db1c9a653c78bc51bb0d1483882233cf2d2bf688609b1a5251ef'

  # github.com/docker/kitematic was verified as official when first introduced to the cask
  url "https://github.com/docker/kitematic/releases/download/v#{version}/Kitematic-#{version}-Mac.zip"
  name 'Kinematic'
  homepage 'https://kitematic.com/'
  license :apache

  app 'Kitematic (Beta).app'

  zap delete: '~/Library/Application\ Support/Kitematic'
end
