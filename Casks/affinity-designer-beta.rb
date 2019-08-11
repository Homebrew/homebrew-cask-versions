cask 'affinity-designer-beta' do
  version '1.7.2.2 - RC1'
  sha256 '18aa8b63bdf791402b7e0372566b6e94ac5c8593ca7a2d606c30dedd709f0cba'

  # affinity-beta.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://affinity-beta.s3.amazonaws.com/download/Affinity%20Designer%20Beta.dmg'
  appcast 'https://forum.affinity.serif.com/index.php?/forum/15-designer-beta-on-mac/'
  name 'Serif Affinity Designer'
  homepage 'https://affinity.serif.com/en-us/'

  app 'Affinity Designer Beta.app'
end
