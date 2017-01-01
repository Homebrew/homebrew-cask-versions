cask 'vox0' do
  version '0.3b2'
  sha256 '997b98a0b215ab1469fdfc0ce73764bd722fe944074ca8e61be6069dbecbe711'

  # cloud.coppertino.com/vox was verified as official when first introduced to the cask
  url "http://cloud.coppertino.com/vox/Vox_#{version}.dmg"
  name 'VOX'
  homepage 'https://vox.rocks/mac-music-player/old-versions'

  app 'Vox.app'
end
