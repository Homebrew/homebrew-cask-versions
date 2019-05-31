cask 'affinity-photo-beta' do
  version '1.7.0.135 - Gold Master Seed'
  sha256 'a78bf3c5193737393a5918890de1b58a9082a8559af2d39c118cb54984662475'

  # affinity-beta.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/'
  name 'Serif Affinity Photo'
  homepage 'https://affinity.serif.com/en-us/photo/'

  app 'Affinity Photo Beta.app'
end
