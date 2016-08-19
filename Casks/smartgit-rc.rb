cask 'smartgit-rc' do
  version '8-rc-1'
  sha256 '43b9e2d125ddc583464a66e4f07a9ebd47d4422460f0c0f3e178f59e2678c8a7'

  url "https://www.syntevo.com/downloads/smartgit/smartgit-macosx-#{version}.dmg"
  name 'SmartGit'
  homepage 'https://www.syntevo.com/smartgit/'
  license :commercial

  app 'SmartGit.app'
  binary "#{appdir}/SmartGit.app/Contents/MacOS/SmartGit"

  caveats do
    files_in_usr_local
  end
end
