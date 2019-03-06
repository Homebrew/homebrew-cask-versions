cask 'affinity-designer-beta' do
  version '1.7.0.5'
  sha256 '416f3c638bbf09f85a3b632599e4e2e32100cdf387835b2dfb9dfdd720f3e3fc'

  # amazonaws.com/affinity-beta was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/affinity-beta/download/Affinity%20Designer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-mac/'
  name 'Serif Affinity Designer'
  homepage 'https://affinity.serif.com/en-us/'

  app 'Affinity Designer Beta.app'
end
