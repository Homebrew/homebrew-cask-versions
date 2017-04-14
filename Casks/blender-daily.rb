cask 'blender-daily' do
  version '2.78-f74b4a0'
  sha256 '12a9da8240f1613270b40a1eec062b6670958986d88d8b049fb917dabc43572e'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
