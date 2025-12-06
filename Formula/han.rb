# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.50.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.50.0/han-darwin-arm64"
      sha256 "09640a702ba2d5a02b1e7002e85cb613f60f7e873d4dbb78a6788e401a1eff1e"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.50.0/han-darwin-x64"
      sha256 "e90623679199caa83992b0de4129fa57cdc753fb72f0cc01ff0e38decc989f6e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.50.0/han-linux-arm64"
      sha256 "92aa808814dde04109a4dc652d417cdbd6703df04a7ed9b30b5a1ad9bf134b0c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.50.0/han-linux-x64"
      sha256 "6288dbf0a62437c2140d02631e4b28e5baf5e62f6c6e8f1a4d2148936d62ef25"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
