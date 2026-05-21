cask "porthole@beta" do
  version "0.1.0"
  sha256 "dcc45d72dc96436b607ffa39ef2613f9ce13e8014bb7e5a24d9c1bcbfa94c58e"

  url "https://github.com/innerlightlabs-org/porthole/releases/download/porthole-v#{version}/Porthole-#{version}.zip"
  name "Porthole (Beta)"
  desc "Menu bar app that surfaces Syncthing status (pre-release channel)"
  homepage "https://github.com/innerlightlabs-org/porthole"

  livecheck do
    url :url
    regex(/^porthole-v?(\d+(?:\.\d+)+-beta(?:\.\d+)?)$/i)
    strategy :github_releases
  end

  depends_on macos: ">= :tahoe"

  app "Porthole.app"

  zap trash: [
    "~/Library/Preferences/com.innerlightlabs.porthole.plist",
    "~/Library/Saved Application State/com.innerlightlabs.porthole.savedState",
  ]
end
