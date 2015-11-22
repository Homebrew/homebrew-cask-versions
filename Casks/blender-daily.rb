cask :v1 => 'blender-daily' do
  version '2.76-c4188c2'
  sha256 '471c316f040bd669c3c3e0831e3e9977119439b74b07afa9212a2b8a753262a1'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
