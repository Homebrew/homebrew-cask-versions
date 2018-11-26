cask 'affinity-photo-beta' do
  version '1.7.0.103'
  sha256 'c80feae19054b6e5f3e48513af75a055c5cc4264419aebadf2d2f418377be6ed'

  # affinity-beta.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/'
  name 'Serif Affinity Photo'
  homepage 'https://affinity.serif.com/en-us/photo/'

  app 'Affinity Photo Beta.app'
end
