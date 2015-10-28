cask :v1 => 'blender-daily' do
  version '2.76-16796c2'
  sha256 '46254d159c43e519f812be3e6342a349fc3012b97687c53714c582004321c17e'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
