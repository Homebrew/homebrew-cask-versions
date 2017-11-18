cask 'parallels11' do
  version '11.2.3-32663'
  sha256 '8f62b21fa22ca4fc4c3fd005f462f38d161ac43d1513165375d4144bbf3ba3ad'

  url "https://download.parallels.com/desktop/v#{version.major}/#{version}/ParallelsDesktop-#{version}.dmg"
  name 'Parallels Desktop'
  homepage 'https://www.parallels.com/products/desktop/'

  app 'Parallels Desktop.app'

  postflight do
    # Unhide the application
    system_command '/usr/bin/chflags',
                   args: ['nohidden', "#{appdir}/Parallels Desktop.app"],
                   sudo: true

    # Run the initialization script
    system_command "#{appdir}/Parallels Desktop.app/Contents/MacOS/inittool",
                   args: ['init', '-b', "#{appdir}/Parallels Desktop.app"],
                   sudo: true
  end

  uninstall_preflight do
    set_ownership "#{appdir}/Parallels Desktop.app"
  end

  uninstall delete: [
                      '/usr/bin/prl_convert',
                      '/usr/bin/prl_disk_tool',
                      '/usr/bin/prl_perf_ctl',
                      '/usr/bin/prlctl',
                      '/usr/bin/prlsrvctl',
                    ]

  zap trash: [
               '~/.parallels_settings',
               '~/Library/Caches/com.parallels.desktop.console',
               '~/Library/Preferences/com.parallels.desktop.console.LSSharedFileList.plist',
               '~/Library/Preferences/com.parallels.desktop.console.plist',
               '~/Library/Preferences/com.parallels.Parallels Desktop Statistics.plist',
               '~/Library/Preferences/com.parallels.Parallels Desktop.plist',
               '~/Library/Preferences/com.parallels.Parallels.plist',
             ]
end
