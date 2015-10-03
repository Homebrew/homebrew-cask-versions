cask :v1 => 'macvim-kaoriya' do
  if MacOS.release <= :lion
    version_date = '20130911'
    version "7.4.22-#{version_date}"
    sha256 'd9fc6e38de1852e4ef79e9ea78afa60e606bf45066cff031e349d65748cbfbce'
  else
    version_date = '20150707'
    version "7.4.769-#{version_date}"
    sha256 '230281d1729e6426b2909772a29ff7f15e9c2a060fe66a7b8205ef1a0b7cfbdc'
  end

  url "https://github.com/splhack/macvim-kaoriya/releases/download/#{version_date}/macvim-kaoriya-#{version_date}.dmg"
  appcast 'https://raw.githubusercontent.com/splhack/macvim-kaoriya/master/latest.xml',
          :sha256 => '8018162993b0c4b73bc053e71874fabf58a556709865d84ebf28f846db8337e4'

  name 'MacVim KaoriYa'
  homepage 'https://github.com/splhack/macvim-kaoriya'
  license :oss

  app 'MacVim.app'
  depends_on :macos => '>= :lion'
  mvim = 'MacVim.app/Contents/MacOS/mvim'
  executables = %w[macvim-askpass mvim mvimdiff mview mvimex gvim gvimdiff gview gvimex]
  executables += %w[vi vim vimdiff view vimex] if ARGV.include? '--override-system-vim'
  executables.each { |e| binary mvim, :target => e }

  zap :delete => [
                  '~/Library/Preferences/org.vim.MacVim.LSSharedFileList.plist',
                  '~/Library/Preferences/org.vim.MacVim.plist',
                 ]

  postflight do
    system 'ruby',
           '-i.bak',
           '-pe',
           %q[sub %r[`dirname "\$0"`(?=(?:/\.\.){3})], '$(cd $(dirname $(readlink $0 || echo $0));pwd)'],
           staged_path.join(mvim)
  end

  caveats do
    files_in_usr_local
    <<-EOS.undent
      Note that homebrew also provides a compiled macvim Formula that links its
      binary to /usr/local/bin/mvim. And the Cask MacVim also does. It's not
      recommended to install both the Cask MacVim KaoriYa and the Cask MacVim
      and the Formula of MacVim.

      This cask installs symlinks in /usr/local/bin that target to the binary
      MacVim.app/Contents/MacOS/mvim. Below is the list.
        macvim-askpass / mvim / mvimdiff / mview / mvimex /
        gvim / gvimdiff / gview / gvimex

      With --override-system-vim option, you can have more symlinks to use
      macvim-kaoriya instead of the system vim.
        vi / vim / vimdiff / view / vimex
    EOS
  end
end
