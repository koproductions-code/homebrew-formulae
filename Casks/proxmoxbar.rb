cask "proxmoxbar" do
  version "2.0.4"
  sha256 "e234fb29f28075be8303a4cd7d540e7c4cbcaa574a157a90a03273d6827e7837"

  url "https://github.com/ryzenixx/proxmoxbar-macos/releases/download/v#{version}/ProxmoxBar.dmg"
  name "ProxmoxBar"
  desc "Native macOS menu bar app for monitoring and controlling Proxmox VE resources."
  homepage "https://github.com/ryzenixx/proxmoxbar-macos"

  livecheck do
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "ProxmoxBar.app"

  zap trash: ""
end
