cask 'dupeguru-me' do
  version '6.8.1'
  sha256 '65720a2cdd17242c30ce848133a6c53e018ea0088f1990fee8d45114c921a118'

  url "https://download.hardcoded.net/dupeguru_me_osx_#{version.dots_to_underscores}.dmg"
  appcast 'https://www.hardcoded.net/updates/dupeguru_me.appcast',
          checkpoint: 'f24c7a70b7d68be92d0da5c577e479911c98a4700c866a93fc639c365df3839e'
  name 'dupeGuru Music Edition'
  homepage 'https://www.hardcoded.net/dupeguru_me/'

  app 'dupeGuru ME.app'
end
