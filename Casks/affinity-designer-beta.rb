cask 'affinity-designer-beta' do
  version '1.7.0.6'
  sha256 'b4d4a12bdb90f6e256a40ae735ff9aa2029d733ce6f87c0c4f4a6a698f45584c'

  # amazonaws.com/affinity-beta was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/affinity-beta/download/Affinity%20Designer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-mac/'
  name 'Serif Affinity Designer'
  homepage 'https://affinity.serif.com/en-us/'

  app 'Affinity Designer Beta.app'
end
