cask 'affinity-photo-beta' do
  version '1.7.1.140 - Release Candidate 1'
  sha256 '15a316808d24c6c23be90ceae01985314b41e9943aca279a277e6db0a85d04a3'

  # affinity-beta.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/'
  name 'Serif Affinity Photo'
  homepage 'https://affinity.serif.com/en-us/photo/'

  app 'Affinity Photo Beta.app'
end
