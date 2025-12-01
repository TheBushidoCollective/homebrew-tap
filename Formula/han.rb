# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.28.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.6/han-darwin-arm64"
      sha256 "a8c58fe5134e7f2095948f1d5a3e3bf2e00913990f8fd62e727006b07039368c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.6/han-darwin-x64"
      sha256 "d67c008a21e4e229adffb695c9c11e753c493d87450d70e701375d68cd724a9f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.6/han-linux-arm64"
      sha256 "56df9555efcd39c26fb2a28562d7b6d20dbf9c335abb694146c9133aaee84e80"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.6/han-linux-x64"
      sha256 "1a3db63c2df7cf97e260144a07a87793f5a314ce79ebe658a2600a550facc7a4"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
