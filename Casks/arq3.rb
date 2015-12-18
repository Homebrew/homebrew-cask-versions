cask 'arq3' do
  version '3.3.4'
  sha256 '2b4317b83d14090764f2134d4cc0fa3ee18b102974cff935f47a8afb4b3860a2'

  url "http://www.haystacksoftware.com/arq/Arq_#{version}.zip"
  name 'Arq'
  homepage 'http://www.haystacksoftware.com/arq/'
  license :commercial

  app 'Arq.app'
end
