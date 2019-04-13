cask 'affinity-designer-beta' do
  version '1.7.0.9'
  sha256 'c64e49d0eb387a7cafd80541b76d0b89ecb5348e20a85d2879b111ed4de9b0c0'

  # amazonaws.com/affinity-beta was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/affinity-beta/download/Affinity%20Designer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-mac/'
  name 'Serif Affinity Designer'
  homepage 'https://affinity.serif.com/en-us/'

  app 'Affinity Designer Beta.app'
end
