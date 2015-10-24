cask :v1 => 'blender-daily' do
  version '2.76-6222505'
  sha256 'a153a5d480463db03712c1383bd8dc3791781cb38281fc35f44a505b89450558'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
