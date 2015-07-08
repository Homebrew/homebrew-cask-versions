cask :v1 => 'blender-daily' do
  version '2.75-de6b4dc'
  sha256 '7df180e65c520f28d2cc10fc684b525d624cbd09285d18ee14cb016489f9f2e0'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
