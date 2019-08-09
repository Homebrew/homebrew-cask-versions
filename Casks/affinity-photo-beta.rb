cask 'affinity-photo-beta' do
  version '1.7.2.151 - RC3'
  sha256 '293303e964ddfa3fe2b3c4412b070b4f06121d38e9f9681983aaea8d78e58ea3'

  # affinity-beta.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.zip'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/'
  name 'Serif Affinity Photo'
  homepage 'https://affinity.serif.com/en-us/photo/'

  app 'Affinity Photo Beta.app'
end
