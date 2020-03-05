cask 'affinity-photo-beta' do
  version '1.8.2.173'
  sha256 '6d2d7bf24ceb9484c5643e67b8c8e6e7c781c84d1e1481982b21c54a5242ce4a'

  # affinity-beta.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.zip'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/'
  name 'Serif Affinity Photo'
  homepage 'https://affinity.serif.com/en-us/photo/'

  app 'Affinity Photo Beta.app'
end
