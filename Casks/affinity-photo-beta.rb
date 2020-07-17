cask 'affinity-photo-beta' do
  version '1.8.4.184'
  sha256 '24cb0afdb0fd8f72866dd9da722a27a3c8b881ea19677fff924aced7cb5dfff3'

  # affinity-beta.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url 'https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.zip'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/'
  name 'Serif Affinity Photo'
  homepage 'https://affinity.serif.com/en-us/photo/'

  app 'Affinity Photo Beta.app'
end
