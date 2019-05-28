cask 'affinity-photo-beta' do
  version '1.7.0.130 - Release Candidate 1'
  sha256 '7e2e38e1b04803b89ea6782450f092b8dc6613a95dbdc5abbf4ede034de4712b'

  # affinity-beta.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/'
  name 'Serif Affinity Photo'
  homepage 'https://affinity.serif.com/en-us/photo/'

  app 'Affinity Photo Beta.app'
end
