cask :v1 => 'macvim-kaoriya' do
  version '7.4.712-20150623'
  sha256 '47911a1e28daf1aef2115197750bf73ef7104a84a188195595525c148d0871f9'

  url 'https://github.com/splhack/macvim-kaoriya/releases/download/20150623/macvim-kaoriya-20150623.dmg'
  homepage 'https://github.com/splhack/macvim-kaoriya'
  license :oss

  app 'MacVim.app'
  binary "MacVim.app/Contents/MacOS/Vim"

  zap :delete => [
                  '~/Library/Preferences/org.vim.MacVim.LSSharedFileList.plist',
                  '~/Library/Preferences/org.vim.MacVim.plist',
                 ]

  caveats do
    files_in_usr_local
    <<-EOS.undent
      Note that homebrew also provides a compiled macvim Formula that links its
      binary to /usr/local/bin/Vim. It's not recommended to install both the
      Cask and the Formula of MacVim.
    EOS
  end
end
