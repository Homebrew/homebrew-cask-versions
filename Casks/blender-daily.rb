cask :v1 => 'blender-daily' do
  version '2.76-02f3ceb'
  sha256 '5c8896c9bb06c047f1dcf7229b60add0282525e23868df6f2179899b41243dfe'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender.app'
  app 'BlenderPlayer.app'
end
