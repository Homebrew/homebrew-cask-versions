cask 'affinity-photo-beta' do
  version '1.7.1.138'
  sha256 '88be32366f8d8239b8f01984b1aa24067c9ac871d8c11fb589d8140f551018a8'

  # affinity-beta.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/'
  name 'Serif Affinity Photo'
  homepage 'https://affinity.serif.com/en-us/photo/'

  app 'Affinity Photo Beta.app'
end
