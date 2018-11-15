cask 'affinity-photo-beta' do
  version '1.7.0.98'
  sha256 '171fe590ccbff74a7d856ae8f207ed50d45c65d44509d5503598a7bd3b1a7e5d'

  # affinity-beta.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta%20%28#{version}%29.dmg"
  appcast 'https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/'
  name 'Serif Affinity Photo'
  homepage 'https://affinity.serif.com/en-us/photo/'

  app 'Affinity Photo Beta.app'
end
