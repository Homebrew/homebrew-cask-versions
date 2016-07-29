cask 'blender-daily' do
  version '2.77-3a4c307'
  sha256 '318ee7fd69d42fd3c81425267853c5aa03bc1de82ce67e0cb6ca70ca0f6a0b4e'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
