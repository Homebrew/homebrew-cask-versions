cask 'blender-daily' do
  version '2.77-2820ab5'
  sha256 '46262ac5e8d225d21a89bf10a4b8aca5c3dc49a949e3ffa76a4681ab4db979b8'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
