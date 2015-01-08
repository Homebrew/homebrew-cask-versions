cask :v1 => 'foldingtext-dev' do
  version :latest
  sha256 :no_check

  # amazonaws.com is the official download host per the vendor homepage
  url 'http://foldingtext.s3.amazonaws.com/FoldingText-Dev.dmg'
  name 'FoldingText'
  homepage 'http://www.foldingtext.com'
  license :commercial

  app 'FoldingText.app'
end
