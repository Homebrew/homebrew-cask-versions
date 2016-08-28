cask 'blender-daily' do
  version '2.77-a5261e0'
  sha256 '4d87abfea1e4cf9e0d38ab656d8a36ddbc1334c705cea3dd629be4525b424b31'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
