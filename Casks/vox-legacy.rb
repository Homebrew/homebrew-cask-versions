cask :v1 => 'vox-legacy' do
  version '0.3b2'
  sha256 '997b98a0b215ab1469fdfc0ce73764bd722fe944074ca8e61be6069dbecbe711'

  url "http://cloud.coppertino.com/vox/Vox_#{version}.dmg"
  name 'VOX'
  homepage 'http://coppertino.com/vox/'
  license :freemium

  app 'Vox.app'
end
