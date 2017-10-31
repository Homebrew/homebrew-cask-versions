cask 'anaconda2' do
  version '5.0.1'
  sha256 'e3a9a5c84cb89ff079b0781ba773a3433d490fe0cfc24042c613a5674748d87b'

  # repo.continuum.io/archive was verified as official when first introduced to the cask
  url "https://repo.continuum.io/archive/Anaconda2-#{version}-MacOSX-x86_64.sh"
  name 'Continuum Analytics Anaconda2'
  homepage 'https://www.anaconda.com/what-is-anaconda/'

  depends_on macos: '>= :lion'
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
