cask 'mcrl2-nightly' do
  version :latest
  sha256 :no_check

  url do
    require 'open-uri'
    URI('https://www.mcrl2.org/web/user_manual/download.html')
      .open
      .read
      .scan(%r{href="([^"]+/devel/mcrl2\-[^"]+_x86_64.dmg)"})
      .flatten
      .first
  end
  name 'mCRL2'
  homepage 'http://www.mcrl2.org/'

  app 'mCRL2.app'

  tools = [
            'besinfo',
            'bespp',
            'bessolve',
            'diagraphica',
            'lps2lts',
            'lps2pbes',
            'lpsactionrename',
            'lpsbinary',
            'lpsbisim2pbes',
            'lpsconfcheck',
            'lpsconstelm',
            'lpsinfo',
            'lpsinvelm',
            'lpsparelm',
            'lpsparunfold',
            'lpspp',
            'lpsrewr',
            'lpssim',
            'lpssumelm',
            'lpssuminst',
            'lpsuntime',
            'lpsxsim',
            'lts2lps',
            'lts2pbes',
            'ltscompare',
            'ltsconvert',
            'ltsgraph',
            'ltsinfo',
            'ltspbisim',
            'ltsview',
            'mcrl2-gui',
            'mcrl2compilerewriter',
            'mcrl22lps',
            'mcrl2i',
            'mcrl2xi',
            'pbes2bes',
            'pbes2bool',
            'pbesconstelm',
            'pbesinfo',
            'pbesinst',
            'pbesparelm',
            'pbespgsolve',
            'pbespp',
            'pbesrewr',
            'pbesstategraph',
            'tracepp',
            'txt2bes',
            'txt2lps',
            'txt2pbes',
          ]

  experimental_tools = [
                         'besconvert',
                         'complps2pbes',
                         'lpsrealelm',
                         'lpsrealzone',
                         'lpssymbolicbisim',
                         'pbesabsinthe',
                         'pbespareqelm',
                         'symbolic_exploration',
                       ]

  [*tools, *experimental_tools].each do |tool|
    binary "#{staged_path}/bin/#{tool}.wrapper.sh", target: tool
  end

  preflight do
    FileUtils.mkdir "#{staged_path}/bin"

    [*tools, *experimental_tools].each do |tool|
      # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
      IO.write "#{staged_path}/bin/#{tool}.wrapper.sh", <<~EOS
        #!/bin/sh
        exec '#{appdir}/mCRL2.app/Contents/bin/#{tool}' "$@"
      EOS
    end
  end
end
