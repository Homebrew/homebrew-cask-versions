cask 'foldingtext-dev' do
  version :latest
  sha256 :no_check

  # foldingtext.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://foldingtext.s3.amazonaws.com/FoldingText-Dev.dmg'
  name 'FoldingText'
  homepage 'http://www.foldingtext.com/'

  app 'FoldingText.app'
end
