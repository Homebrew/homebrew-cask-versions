cask 'affinity-designer-beta' do
  version '1.7.0.12'
  sha256 'b67cc07d8ec1ee8eed1b6c04f20cc23591edeef2f45808a46f2dfc2acf12ce79'

  # amazonaws.com/affinity-beta was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/affinity-beta/download/Affinity%20Designer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-mac/'
  name 'Serif Affinity Designer'
  homepage 'https://affinity.serif.com/en-us/'

  app 'Affinity Designer Beta.app'
end
