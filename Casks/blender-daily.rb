cask :v1 => 'blender-daily' do
  version '2.76-964107f'
  sha256 '3758f54eeb3a37428c4be418afd2c2470e8fbcc18e4109dddc1add83d1a52ff4'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
