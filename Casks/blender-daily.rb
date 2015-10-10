cask :v1 => 'blender-daily' do
  version '2.76-0499c5a'
  sha256 '1d39127d7ddb2e14529c39471b63621e3d2dfa91f9df4878f11dd6ab402083fe'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
