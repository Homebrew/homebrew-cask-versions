cask :v1 => 'blender-beta' do
  version '2.75-rc1'
  sha256 '6609f4329bca8535a8640696e27a50d8ab68798d0a7ae63873141246c7b3baca'

  url 'http://download.blender.org/release/Blender2.75/blender-#{version}-OSX_10.6-x86_64.zip'
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
