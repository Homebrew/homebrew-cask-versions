cask 'affinity-designer-beta' do
  version '1.7.0.10'
  sha256 'ba21bbcd3b1cbfedf9cb5ffe10ea8fafc5971eac1a839829bd4432db53da1df1'

  # amazonaws.com/affinity-beta was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/affinity-beta/download/Affinity%20Designer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-mac/'
  name 'Serif Affinity Designer'
  homepage 'https://affinity.serif.com/en-us/'

  app 'Affinity Designer Beta.app'
end
