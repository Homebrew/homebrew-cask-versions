cask 'affinity-photo-beta' do
  version '1.8.4.183'
  sha256 'e1ded3ef356776358933af3c48343f35b171ea9621ae655e9fd422d5628e7614'

  # affinity-beta.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.zip'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/'
  name 'Serif Affinity Photo'
  homepage 'https://affinity.serif.com/en-us/photo/'

  app 'Affinity Photo Beta.app'
end
