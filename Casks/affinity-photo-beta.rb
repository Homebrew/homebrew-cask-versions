cask 'affinity-photo-beta' do
  version '1.7.0.102'
  sha256 'ea974ed77cb7b5a59964346de262d3749b082d5a4a1a4bcc54a9faae2ba2b7c6'

  # affinity-beta.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/'
  name 'Serif Affinity Photo'
  homepage 'https://affinity.serif.com/en-us/photo/'

  app 'Affinity Photo Beta.app'
end
