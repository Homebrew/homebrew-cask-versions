cask 'porting-kit-legacy' do
  version :latest
  sha256 :no_check

  url 'http://portingkit.com/kit/Porting%20Kit%20Legacy.zip'
  name 'Porting Kit Legacy'
  homepage 'http://portingkit.com/'

  conflicts_with cask: 'porting-kit'
  depends_on macos: '<= :mountain_lion'

  app 'Porting Kit Legacy.app'

  zap trash: [
               '~/Library/Preferences/edu.ufrj.vitormm.Porting-Kit-Legacy.plist',
               '~/Library/Application Support/Porting-Kit-Legacy',
               '~/Library/Saved Application State/edu.ufrj.vitormm.Porting-Kit-Legacy.savedState',
               '~/Library/Caches/edu.ufrj.vitormm.Porting-Kit-Legacy',
               '~/Library/Cookies/edu.ufrj.vitormm.Porting-Kit-Legacy.binarycookies',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/edu.ufrj.vitormm.porting-kit-legacy.sfl*',
             ]
end
