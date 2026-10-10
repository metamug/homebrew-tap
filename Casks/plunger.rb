cask "plunger" do
  version "0.5.3"
  sha256 "3c697a10d2d2177171fab4afa330b3bb496e1685256e51a6fe73ca3f7b1ed36a"

  url "https://github.com/metamug/plunger/releases/download/v#{version}/Plunger-#{version}-macos.dmg"
  name "Plunger"
  desc "API client for you and your AI agent: window, command line and MCP server"
  homepage "https://github.com/metamug/plunger"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "Plunger.app"
  # `plunger send ...` and `plunger mcp` from a terminal, using the app's own program.
  binary "#{appdir}/Plunger.app/Contents/MacOS/plunger"

  zap trash: [
    "~/Library/Application Support/Plunger",
    "~/Library/Saved Application State/com.metamug.plunger.savedState",
  ]
end
