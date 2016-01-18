cask 'xquartz-beta' do
  version '2.7.9_rc2'
  sha256 '12d89785484f634220fdf6bd23a9594d46db68fe3e719dabf82bc53009d8a192'

  # bintray.com is the official download host per the appcast feed
  url "https://dl.bintray.com/xquartz/downloads/XQuartz-#{version}.dmg"
  appcast 'https://xquartz-dl.macosforge.org/sparkle/beta.xml',
          checkpoint: 'a3b3271fa3b8dbb7302f9360e7e22552f31955c9416360a0d0d31db5b69623ab'
  name 'XQuartz'
  homepage 'https://xquartz.macosforge.org/'
  license :oss

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
