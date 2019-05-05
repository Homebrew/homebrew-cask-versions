cask 'affinity-designer-beta' do
  version '1.7.0.11'
  sha256 'ed5970a6a9af284f8006fc6c2f3eee5a7b5c8a8b7d3ef8255606fa7287fcdff7'

  # amazonaws.com/affinity-beta was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/affinity-beta/download/Affinity%20Designer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-mac/'
  name 'Serif Affinity Designer'
  homepage 'https://affinity.serif.com/en-us/'

  app 'Affinity Designer Beta.app'
end
