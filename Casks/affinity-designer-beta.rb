cask 'affinity-designer-beta' do
  version '1.7.0.8'
  sha256 '6ff81d1e8abe1ef36c045d3a015a022c19cd37dfbc81d75c9a30dafbc3b74910'

  # amazonaws.com/affinity-beta was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/affinity-beta/download/Affinity%20Designer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-mac/'
  name 'Serif Affinity Designer'
  homepage 'https://affinity.serif.com/en-us/'

  app 'Affinity Designer Beta.app'
end
