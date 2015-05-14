cask :v1 => 'iterm2-beta' do
  version '2.1.1'
  sha256 'b8f1bbd11cdb3e26fd9fab6971c28ebeb422361b2cc5fd6e4a843836d5dedeb0'

  url 'https://iterm2.com/downloads/beta/iTerm2-2_1_1.zip'
  homepage 'http://www.iterm2.com/'
  license :oss

  app 'iTerm.app'
end
