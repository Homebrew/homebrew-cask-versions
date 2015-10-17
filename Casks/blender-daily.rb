cask :v1 => 'blender-daily' do
  version '2.76-bfdb420'
  sha256 '61beb0ee8cca77a4b053dc86f71f9351a7e4bff9eaeb9e7dc7964987706f0ee2'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
