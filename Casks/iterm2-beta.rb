cask :v1 => 'iterm2-beta' do
  version '2.9.20150626'
  sha256 '18cf11393ed81d351d739257185bc33414c440c4281e576f9d0b54405970f902'

  url 'https://iterm2.com/downloads/beta/iTerm2-2_9_20150626.zip'
  homepage 'http://www.iterm2.com/'
  license :oss

  app 'iTerm.app'
end
