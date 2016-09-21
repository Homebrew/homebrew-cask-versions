cask 'anaconda2' do
  version '4.1.1'
  sha256 '3b2fb323eb26c1c58788f63c41e164c20c417f7f24e30b8057e92ab4d6102b70'

  url "https://repo.continuum.io/archive/Anaconda2-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Anaconda2'
  homepage 'https://www.continuum.io/why-anaconda'
  license :gratis

  depends_on macos: '>= :lion'
  container type: :naked

  installer script: "Anaconda2-#{version}-MacOSX-x86_64.sh",
            args:   ['-b'],
            sudo:   false

  preflight do
    set_permissions "#{staged_path}/Anaconda2-#{version}-MacOSX-x86_64.sh", '+x'
  end

  uninstall delete: '~/anaconda2'

  caveats do
    path_environment_variable '~/anaconda2/bin'
  end
end
