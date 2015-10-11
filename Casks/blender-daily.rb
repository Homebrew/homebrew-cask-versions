cask :v1 => 'blender-daily' do
  version '2.76-3748bbf'
  sha256 'a150281e6251756036e928acf09f4e6b01661b0017918a53164f3c5d1c2bcadd'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
