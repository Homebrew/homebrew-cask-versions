cask "vlc-nightly" do
  version :latest
  sha256 :no_check

  url do
    base_url = "https://artifacts.videolan.org/vlc/nightly-macos/"
    result = curl_output("--fail", "--silent", base_url)
    result.assert_success!
    folder = result.stdout[/\d+-\d+/]
    updated_url = "#{base_url}#{folder}/"
    result = curl_output("--fail", "--silent", updated_url)
    result.assert_success!
    file = result.stdout[/href="([^"]+.dmg)"/, 1]
    "#{updated_url}#{file}"
  end
  name "VLC media player"
  desc "Open-source cross-platform multimedia player"
  homepage "https://www.videolan.org/vlc/"

  conflicts_with cask: "vlc"

  app "VLC.app"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/vlc.wrapper.sh"
  binary shimscript, target: "vlc"

  preflight do
    IO.write shimscript, <<~EOS
      #!/bin/sh
      exec '#{appdir}/VLC.app/Contents/MacOS/VLC' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.videolan.vlc.sfl*",
    "~/Library/Application Support/org.videolan.vlc",
    "~/Library/Application Support/VLC",
    "~/Library/Caches/org.videolan.vlc",
    "~/Library/Preferences/org.videolan.vlc",
    "~/Library/Preferences/org.videolan.vlc.plist",
    "~/Library/Saved Application State/org.videolan.vlc.savedState",
  ]
end
