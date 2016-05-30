cask 'blender-daily' do
  version '2.77-11b0874'
  sha256 '8e23e398d92554f90541ae1e5f39fb5950e14a1da2c816b1da1e69ba7b79f922'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
