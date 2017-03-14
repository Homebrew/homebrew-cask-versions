cask 'anaconda2' do
  version '4.2.0'
  sha256 'a8b3ef86233635d9dcc3499dc384980762a0b42d354a318f8307029c399db452'

  url "https://repo.continuum.io/archive/Anaconda2-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Anaconda2'
  homepage 'https://www.continuum.io/why-anaconda'

  depends_on macos: '>= :lion'
  container type: :naked

  installer script: "Anaconda2-#{version}-MacOSX-x86_64.sh",
            args:   ['-b']

  preflight do
    set_permissions "#{staged_path}/Anaconda2-#{version}-MacOSX-x86_64.sh", '+x'
  end

  uninstall delete: '~/anaconda2'

  caveats do
    path_environment_variable '~/anaconda2/bin'
  end
end
