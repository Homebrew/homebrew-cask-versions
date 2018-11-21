cask 'affinity-designer-beta' do
  version '1.7.0.3'
  sha256 'c333ac58ec8db106a47ab46b70ca824621044cafde7bc7cd09043d4d0707c69b'

  # amazonaws.com/affinity-beta was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/affinity-beta/download/Affinity%20Designer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-mac/'
  name 'Serif Affinity Designer'
  homepage 'https://affinity.serif.com/en-us/'

  app 'Affinity Designer Beta.app'
end
