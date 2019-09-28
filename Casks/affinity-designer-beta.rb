cask 'affinity-designer-beta' do
  version '1.7.3 (RC 1)'
  sha256 'cd0db7941f6b0b12843946da1353b073dc2158ad8f1b73234e132aebd154ee7a'

  # affinity-beta.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://affinity-beta.s3.amazonaws.com/download/Affinity%20Designer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-mac/'
  name 'Serif Affinity Designer'
  homepage 'https://affinity.serif.com/en-us/'

  app 'Affinity Designer Beta.app'
end
