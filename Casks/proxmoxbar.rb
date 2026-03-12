cask "proxmoxbar" do
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
