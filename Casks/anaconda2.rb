cask 'anaconda2' do
  version '5.0.0'
  sha256 'd85198c63657924fae11b6ea5961f50d81d09a1185d6f0a9a9d5bc69eb788ccc'

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
