cask 'forklift-beta' do
  version '3.b10'
  sha256 '159b4c84221a5d5cfa45f192fb29ddbf44aee98fa1fe9c9e59d05b413726c2bf'

  url "http://download.binarynights.com/ForkLift#{version.no_dots}.zip"
  name 'ForkLift'
  homepage 'https://www.binarynights.com/forklift/'

  app 'ForkLift.app'

  zap delete: [
                "~/Library/Preferences/com.binarynights.ForkLift-#{version.major}.plist",
                '~/Library/Application Support/ForkLift',
                "~/Library/Saved Application State/com.binarynights.ForkLift-#{version.major}.savedState",
                "~/Library/Caches/com.binarynights.ForkLift-#{version.major}",
              ]
end
