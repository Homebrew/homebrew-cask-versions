cask 'mcrl2-nightly' do
  version '201707.1.15080'
  sha256 '37b260017a4b7def9b782461555b703fa04522aa845bd5cbc52cd8ed7b9482eb'

  url "http://www.mcrl2.org/download/devel/mcrl2-#{version}_x86_64.dmg"
  name 'mCRL2'
  homepage 'http://www.mcrl2.org/'

  app 'mCRL2.app'

  [
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
  ].each do |tool|
    binary "#{appdir}/mCRL2.app/Contents/bin/#{tool}"
  end

  [
    'besconvert',
    'complps2pbes',
    'lpsrealelm',
    'lpsrealzone',
    'lpssymbolicbisim',
    'pbesabsinthe',
    'pbespareqelm',
    'symbolic_exploration',
  ].each do |experimental_tool|
    binary "#{appdir}/mCRL2.app/Contents/bin/#{experimental_tool}"
  end
end
