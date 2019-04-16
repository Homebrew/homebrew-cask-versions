cask 'affinity-photo-beta' do
  version '1.7.x'
  sha256 '8feffce767687dae96da293611ffdbfbdef363542c869128bf5d73e63a5c61b0'

  # affinity-beta.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/'
  name 'Serif Affinity Photo'
  homepage 'https://affinity.serif.com/en-us/photo/'

  app 'Affinity Photo Beta.app'
end
