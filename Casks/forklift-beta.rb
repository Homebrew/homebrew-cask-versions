cask 'forklift-beta' do
  version '3.0.8b'
  sha256 '0198d1831d1304515d254d87d44e645bfbdc025f1798f14b5016a2b5c7766349'

  url "http://download.binarynights.com/ForkLift#{version}.zip"
  name 'ForkLift'
  homepage 'https://www.binarynights.com/forklift/'

  app 'ForkLift.app'

  uninstall delete:    '/Library/PrivilegedHelperTools/com.binarynights.ForkLiftHelper',
            launchctl: [
                         'com.binarynights.ForkLiftHelper',
                         'com.binarynights.ForkLiftMini',
                       ],
            quit:      [
                         "com.binarynights.ForkLift-#{version.major}",
                         'com.binarynights.ForkLiftMini',
                       ]

  zap trash: [
               '~/Library/Application Support/ForkLift',
               "~/Library/Caches/com.binarynights.ForkLift-#{version.major}",
               "~/Library/Cookies/com.binarynights.ForkLift-#{version.major}.binarycookies",
               '~/Library/Logs/ForkLift',
               '~/Library/Logs/ForkLiftMini',
               "~/Library/Preferences/com.binarynights.ForkLift-#{version.major}.plist",
               '~/Library/Preferences/com.binarynights.ForkLiftMini.plist',
               "~/Library/Saved Application State/com.binarynights.ForkLift-#{version.major}.savedState",
             ]
end
