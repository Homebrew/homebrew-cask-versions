cask 'blender-daily' do
  version '2.77-2e553f7'
  sha256 '2e79747e32ef81c0da2bd96f1a26234c4ddbc325eb6074f879a0fc0581e65083'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
