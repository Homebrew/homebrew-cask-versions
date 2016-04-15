cask 'iterm2-nightly' do
  version '2.9.20160415'
  sha256 'b6a2652943628e3ea27e6e0a714c04a781e40adb5449ae44ca648ae4851ee7b8'

  url "https://iterm2.com/downloads/nightly/iTerm2-#{version.dots_to_underscores}-nightly.zip"
  appcast 'https://iterm2.com/appcasts/nightly.xml',
          checkpoint: '5b9a1b6c6bbc4069079fb7eed359299a536fabdb2a3c3d58fcf9e103480134f8'
  name 'iTerm2'
  homepage 'https://www.iterm2.com/'
  license :gpl

  app 'iTerm.app'

  zap delete: '~/Library/Preferences/com.googlecode.iterm2.plist'
end
