cask :v1 => 'blender-daily' do
  version '2.76-5f95a4f'
  sha256 '7fda5bf982418bfc64467c3885f1b351f9c9c1abe06bc83ce6ebdc95eb2dd447'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
