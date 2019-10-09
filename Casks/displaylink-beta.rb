cask 'displaylink-beta' do
  version '5.2.1-beta.2,1433'
  sha256 '7ad66ef562f19777caa332f5c75853aa7dcf6682be3ca3a35a012104f1de1888'

  url "https://www.displaylink.com/downloads/file?id=#{version.after_comma}",
      data:  {
               'fileId'        => version.after_comma,
               'accept_submit' => 'Accept',
             },
      using: :post
  name 'DisplayLink USB Graphics Software'
  homepage 'https://www.displaylink.com/'

  conflicts_with cask: 'displaylink'
  depends_on macos: :catalina

  pkg 'DisplayLink Software Installer.pkg'

  uninstall pkgutil:   [
                         'com.displaylink.displaylinkdriver',
                         'com.displaylink.displaylinkdriversigned',
                         'com.displaylink.displaylinkdriverunsigned',
                       ],
            # 'kextunload -b com.displaylink.driver.DisplayLinkDriver' causes kernel panic
            # kext:      [
            #              'com.displaylink.driver.DisplayLinkDriver',
            #              'com.displaylink.dlusbncm'
            #            ],
            launchctl: [
                         '73YQY62QM3.com.displaylink.DisplayLinkAPServer',
                         'com.displaylink.useragent-prelogin',
                         'com.displaylink.useragent',
                         'com.displaylink.displaylinkmanager',
                       ],
            quit:      'DisplayLinkUserAgent',
            delete:    [
                         '/Applications/DisplayLink',
                         '/Library/LaunchAgents/com.displaylink.useragent-prelogin.plist',
                         '/Library/LaunchAgents/com.displaylink.useragent.plist',
                         '/Library/LaunchDaemons/com.displaylink.displaylinkmanager.plist',
                       ]

  caveats do
    reboot
    license @cask.url.to_s
  end
end
