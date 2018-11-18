cask 'affinity-photo-beta' do
  version '1.7.0.99'
  sha256 'd4575348e788e266ce8e3b44443de010f60dd1b9fe871acc5268bd527254dc9c'

  # affinity-beta.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://affinity-beta.s3.amazonaws.com/download/Affinity%20Photo%20Customer%20Beta%20%28#{version}%29.dmg"
  appcast 'https://forum.affinity.serif.com/index.php?/forum/19-photo-beta-on-mac/'
  name 'Serif Affinity Photo'
  homepage 'https://affinity.serif.com/en-us/photo/'

  app 'Affinity Photo Beta.app'
end
