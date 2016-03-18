cask 'blender-daily' do
  version '2.77-9777c5b'
  sha256 '2050a3242e8bcd55f6d30686b3fd664e0d5f69eaa1cc5d19256d6042fb5ba2b2'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
