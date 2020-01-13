cask 'affinity-designer-beta' do
  version '1.8.0.2'
  sha256 '9758d924c07236c18c2d675f96e638c7ae1b78b74c5ccf5c2c9c0bbf168bad60'

  # affinity-beta.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://affinity-beta.s3.amazonaws.com/download/Affinity%20Designer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-mac/'
  name 'Serif Affinity Designer'
  homepage 'https://affinity.serif.com/en-us/'

  app 'Affinity Designer Beta.app'
end
