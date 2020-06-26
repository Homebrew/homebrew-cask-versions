cask 'affinity-designer-beta' do
  version '1.8.4.3'
  sha256 'b7b3479a7be0226729b07491c2ff3e8e15e72290181bed7e49a495ab7da5f119'

  # affinity-beta.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://affinity-beta.s3.amazonaws.com/download/Affinity%20Designer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-mac/'
  name 'Serif Affinity Designer'
  homepage 'https://affinity.serif.com/en-us/'

  app 'Affinity Designer Beta.app'
end
