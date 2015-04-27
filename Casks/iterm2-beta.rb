cask :v1 => 'iterm2-beta' do
  version '2.1'
  sha256 '65885d3c5d9168a0742f969e091464a92fb809691951749587a84e37529e44c8'

  url 'https://iterm2.com/downloads/beta/iTerm2-2_1.zip'
  homepage 'http://www.iterm2.com/'
  license :oss

  app 'iTerm.app'
end
