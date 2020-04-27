cask 'microsoft-remote-desktop-beta' do
    module AppCenter
        def self.download_url(version)
            require 'net/http'
            require 'json'
            url = URI(
                'https://install.appcenter.ms/api/v0.1/apps'+
                '/rdmacios-k2vy/microsoft-remote-desktop-for-mac'+
                '/distribution_groups/all-users-of-microsoft-remote-desktop-for-mac'+
                '/releases/%d' % version
            );
            return JSON.parse(Net::HTTP.get(url))['download_url'];
        end
    end
    version "447"
    sha256 '83a2951937a002058f2d374e68f11265e8735c1cbf14925fd4e3368411caa4f4'

    url "#{AppCenter.download_url(version)}"
    appcast 'install.appcenter.ms/api/v0.1/apps/rdmacios-k2vy/microsoft-remote-desktop-for-mac/distribution_groups/all-users-of-microsoft-remote-desktop-for-mac/public_releases?scope=tester'
    name 'Microsoft Remote Desktop Beta'
    homepage 'https://install.appcenter.ms/orgs/rdmacios-k2vy/apps/microsoft-remote-desktop-for-mac/distribution_groups/all-users-of-microsoft-remote-desktop-for-mac'

    auto_updates true

    app 'Microsoft Remote Desktop Beta.app'

    zap trash: [
                 '~/Library/Preferences/com.microsoft.rdc.osx.beta',
                 '~/Library/Caches/com.microsoft.rdc.osx.beta',
                 '~/Library/Application Support/com.microsoft.rdc.osx.beta',
                 '~/Library/Logs/Microsoft Remote Desktop Beta',
                 '~/Library/Application Support/Microsoft Remote Desktop Beta',
               ]
end
