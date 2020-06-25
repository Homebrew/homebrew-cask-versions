cask 'affinity-designer-beta' do
  version '1.8.4.2'
  sha256 '75554bf0378c3e50ba3fa4ab6ae4f00b5c255d9a574bf4891fc8f1af41dd0bf4'

  # affinity-beta.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://affinity-beta.s3.amazonaws.com/download/Affinity%20Designer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-mac/'
  name 'Serif Affinity Designer'
  homepage 'https://affinity.serif.com/en-us/'

  app 'Affinity Designer Beta.app'
end
