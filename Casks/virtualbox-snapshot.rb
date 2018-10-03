cask 'virtualbox-snapshot' do
  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    downloads_url = 'https://www.virtualbox.org/wiki/Testbuilds'
    versions = URI(downloads_url.to_s)
               .open
               .read
               .scan(%r{href=".*(VirtualBox-(?:\d+\.?)+\-\d+\-OSX.dmg)"})
               .flatten
    "https://www.virtualbox.org/download/testcase/#{versions.last}"
  end
  name 'Oracle VirtualBox Development Snapshot'
  homepage 'https://www.virtualbox.org/wiki/Testbuilds'

  conflicts_with cask: [
                         'virtualbox',
                         'virtualbox-beta',
                       ]

  pkg 'VirtualBox.pkg'

  uninstall script:  {
                       executable: 'VirtualBox_Uninstall.tool',
                       args:       ['--unattended'],
                       sudo:       true,
                     },
            pkgutil: 'org.virtualbox.pkg.*'

  zap trash: [
               '/Library/Application Support/VirtualBox',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualbox.sfl*',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.virtualbox.app.virtualboxvm.sfl*',
               '~/Library/VirtualBox',
               '~/Library/Preferences/org.virtualbox.app.VirtualBox.plist',
               '~/Library/Preferences/org.virtualbox.app.VirtualBoxVM.plist',
               '~/Library/Saved Application State/org.virtualbox.app.VirtualBox.savedState',
               '~/Library/Saved Application State/org.virtualbox.app.VirtualBoxVM.savedState',
             ],
      rmdir: '~/VirtualBox VMs'

  caveats do
    kext
  end
end
