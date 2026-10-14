cask "plunger" do
  version "0.7.0"
  sha256 "65154f88724cb1cc0058ac6a0b5e0ff02295f180e67a14fb61867efa41c76eb6"

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
