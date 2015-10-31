cask :v1 => 'blender-daily' do
  version '2.76-92ab3ba'
  sha256 '0196bd5f029c6d4f36273436614c0a68f36be1f106b3c3ff27caaacfe9b72f0b'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
