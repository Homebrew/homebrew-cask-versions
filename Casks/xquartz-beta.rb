cask 'xquartz-beta' do
  version '2.7.11'
  sha256 '32e50e8f1e21542b847041711039fa78d44febfed466f834a9281c44d75cd6c3'

  # bintray.com/xquartz was verified as official when first introduced to the cask
  url "https://dl.bintray.com/xquartz/downloads/XQuartz-#{version}.dmg"
  appcast 'https://www.xquartz.org/releases/sparkle/beta.xml',
          checkpoint: 'f73813abf47116cf3426d4955590ef6e196b73b4a65179e76ec5fabd5124a2c9'
  name 'XQuartz'
  homepage 'https://www.xquartz.org/'

  pkg 'XQuartz.pkg'

  postflight do
    Pathname.new(File.expand_path('~')).join('Library', 'Logs').mkpath

    # Set default path to X11 to avoid the need of manual setup
    system '/usr/bin/defaults', 'write', 'com.apple.applescript', 'ApplicationMap', '-dict-add', 'X11', 'file://localhost/Applications/Utilities/XQuartz.app/'

    # Load & start XServer to avoid the need of relogin
    system '/bin/launchctl', 'load', '/Library/LaunchAgents/org.macosforge.xquartz.startx.plist'

    # Set automatic Updates for Beta Versions
    system 'defaults', 'write', 'org.macosforge.xquartz.X11', 'SUFeedURL', 'http://xquartz.macosforge.org/downloads/sparkle/beta.xml'
  end

  uninstall quit:      'org.macosforge.xquartz.X11',
            launchctl: 'org.macosforge.xquartz.*',
            pkgutil:   'org.macosforge.xquartz.pkg',
            delete:    '/opt/X11/'

  zap       delete: [
                      '~/Library/Caches/org.macosforge.xquartz.X11',
                      '~/Library/Logs/X11',
                      '~/Library/Logs/X11.org.macosforge.xquartz.log',
                      '~/Library/Logs/X11.org.macosforge.xquartz.log.old',
                      '~/Library/Preferences/org.macosforge.xquartz.X11.plist',
                      '~/Library/Saved Application State/org.macosforge.xquartz.X11.savedState',
                      '~/.Xauthority',
                    ],
            rmdir:  '~/.fonts'
end
