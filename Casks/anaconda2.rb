cask 'anaconda2' do
  version '2.4.1'
  sha256 'f4bd45a21e0dff106e36d11cfd532f2b5050d3b792cc0627ab231089341d2040'

  url "https://repo.continuum.io/archive/Anaconda2-#{version}-MacOSX-x86_64.sh"
  name 'Anaconda2'
  homepage 'https://www.continuum.io/why-anaconda'
  license :gratis
  tags :vendor => 'Continuum Analytics'

  container :type => :naked

  preflight do
    set_permissions "#{staged_path}/Anaconda2-#{version}-MacOSX-x86_64.sh", '+x'
  end

  installer :script => "Anaconda2-#{version}-MacOSX-x86_64.sh",
            :args => [ '-b' ],
            :sudo => false

  uninstall :delete => '~/anaconda2'

  caveats do
    path_environment_variable '~/anaconda2/bin'
  end

  depends_on :macos => '>= :lion'
end
