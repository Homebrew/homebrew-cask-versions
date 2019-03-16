cask 'affinity-designer-beta' do
  version '1.7.0.7'
  sha256 '1331b1888292437abae047a08689cd96f0cb7305f5445d89a538cef59a899fcd'

  # amazonaws.com/affinity-beta was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/affinity-beta/download/Affinity%20Designer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-mac/'
  name 'Serif Affinity Designer'
  homepage 'https://affinity.serif.com/en-us/'

  app 'Affinity Designer Beta.app'
end
