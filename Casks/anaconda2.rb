cask 'anaconda2' do
  version '2019.10'
  sha256 '463cbd0b90c47d02ec341377110653870c7cc9d65572c655c5e44aaf2ccb280d'

  # repo.continuum.io/archive/ was verified as official when first introduced to the cask
  url "https://repo.continuum.io/archive/Anaconda2-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Anaconda2'
  homepage 'https://www.anaconda.com/what-is-anaconda/'

  container type: :naked

  installer script: {
                      executable: "Anaconda2-#{version}-MacOSX-x86_64.sh",
                      args:       ['-b', '-p', "#{HOMEBREW_PREFIX}/anaconda2"],
                      sudo:       true,
                    }

  postflight do
    set_ownership "#{HOMEBREW_PREFIX}/anaconda2"
  end

  uninstall delete: [
                      "#{HOMEBREW_PREFIX}/anaconda2",
                      '/Applications/Anaconda-Navigator.app',
                    ]

  caveats do
    path_environment_variable "#{HOMEBREW_PREFIX}/anaconda2/bin"
    files_in_usr_local
  end
end
