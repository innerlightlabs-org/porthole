cask "porthole" do
  version "0.0.0"
  sha256 "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/innerlightlabs-org/porthole/releases/download/v#{version}/Porthole-#{version}.zip"
  name "Porthole"
  desc "Menu bar app that surfaces Syncthing status"
  homepage "https://github.com/innerlightlabs-org/porthole"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :tahoe"

  app "Porthole.app"

  zap trash: [
    "~/Library/Preferences/com.innerlightlabs.porthole.plist",
    "~/Library/Saved Application State/com.innerlightlabs.porthole.savedState",
  ]
end
