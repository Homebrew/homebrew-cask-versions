cask 'parallels10' do
  version '10.3.0-29227'
  sha256 '71654e1c7f311d9c95f4b78686ebcfcbbb8006fcb57cab39ac817b50c6eed2e3'

  url "http://download.parallels.com/desktop/v#{version.major}/#{version.major_minor_patch}/ParallelsDesktop-#{version}.dmg"
  name 'Parallels Desktop'
  homepage 'https://www.parallels.com/products/desktop/'

  app 'Parallels Desktop.app'

  postflight do
    # Set the file to visible, since it was hidden in the dmg
    system '/usr/bin/SetFile', '-a', 'v', "#{appdir}/Parallels Desktop.app"
  end

  uninstall delete: [
                      '/usr/bin/prl_convert',
                      '/usr/bin/prl_disk_tool',
                      '/usr/bin/prl_perf_ctl',
                      '/usr/bin/prlctl',
                      '/usr/bin/prlsrvctl',
                    ]

  zap       delete: [
                      '~/.parallels_settings',
                      '~/Library/Caches/com.parallels.desktop.console',
                      '~/Library/Preferences/com.parallels.desktop.console.LSSharedFileList.plist',
                      '~/Library/Preferences/com.parallels.desktop.console.plist',
                      '~/Library/Preferences/com.parallels.Parallels Desktop Statistics.plist',
                      '~/Library/Preferences/com.parallels.Parallels Desktop.plist',
                      '~/Library/Preferences/com.parallels.Parallels.plist',
                    ]
end
