cask :v1 => 'blender-daily' do
  version '2.76-3bc5399'
  sha256 '81a63baac514914c4d22465757384a98917428b27335a51c7a484ad0b25495be'

  url "https://builder.blender.org/download/blender-#{version}-OSX-10.6-x86_64.zip"
  name 'Blender'
  homepage 'https://www.blender.org/'
  license :gpl

  app 'Blender/Blender.app'
  app 'Blender/BlenderPlayer.app'
end
