cask 'blender-daily' do
  version '2.77-57cff46'
  sha256 '99f4bce7362faf59826cf00f69c05f816b1f8186c5bd6302f6185e6cdeddabea'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
