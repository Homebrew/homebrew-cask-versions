cask 'forklift-beta' do
  version '3.b10'
  sha256 '159b4c84221a5d5cfa45f192fb29ddbf44aee98fa1fe9c9e59d05b413726c2bf'

  url "http://download.binarynights.com/ForkLift#{version.no_dots}.zip"
  appcast "http://update.binarynights.com/ForkLift#{version.major}/update.xml",
          checkpoint: '4a7c0ba4b19b53b06cf73fec1a4a4b8584066f993a6d74fdbd8581189883ab5e'
  name 'ForkLift'
  homepage 'https://www.binarynights.com/'

  app 'ForkLift.app'

  zap delete: [
                "~/Library/Preferences/com.binarynights.ForkLift-#{version.major}.plist",
                '~/Library/Application Support/ForkLift',
                "~/Library/Saved Application State/com.binarynights.ForkLift-#{version.major}.savedState",
                "~/Library/Caches/com.binarynights.ForkLift-#{version.major}",
              ]
end
