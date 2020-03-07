cask 'affinity-designer-beta' do
  version '1.8.2.1'
  sha256 'fb50bbfb867271531d59836dc66dea0e9ab6d7b8abc21d1c78d303f753b25c5c'

  # affinity-beta.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://affinity-beta.s3.amazonaws.com/download/Affinity%20Designer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-mac/'
  name 'Serif Affinity Designer'
  homepage 'https://affinity.serif.com/en-us/'

  app 'Affinity Designer Beta.app'
end
