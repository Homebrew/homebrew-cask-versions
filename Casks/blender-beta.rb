cask :v1 => 'blender-beta' do
  version '2.74rc3'
  sha256 '475be893aaba8b6f82da3b378a69442626502d7fa69380be1d8e71d2df843a56'

  url 'http://download.blender.org/release/Blender2.74/blender-2.74-rc3-OSX_10.6-x86_64.zip'
  name 'Blender'
  homepage 'http://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
