cask 'blender-daily' do
  version '2.79-0398ee10a1b'
  sha256 'eaa856073f0a91777ed0cc1347aba10849f73ecdda653304c114b6e1b65887b2'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
