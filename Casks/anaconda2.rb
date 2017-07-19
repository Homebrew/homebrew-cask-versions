cask 'anaconda2' do
  version '4.4.0'
  sha256 'ab95aef1110c2a385fd39a17e5f11dfbaabce25c1a5944598de164d7a2772969'

  url "https://repo.continuum.io/archive/Anaconda2-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Anaconda2'
  homepage 'https://www.continuum.io/why-anaconda'

  depends_on macos: '>= :lion'
  container type: :naked

  installer script: {
                      executable: "Anaconda2-#{version}-MacOSX-x86_64.sh",
                      args:       ['-b'],
                    }

  preflight do
    set_permissions "#{staged_path}/Anaconda2-#{version}-MacOSX-x86_64.sh", '+x'
  end

  uninstall delete: '~/anaconda2'

  caveats do
    path_environment_variable '~/anaconda2/bin'
  end
end
