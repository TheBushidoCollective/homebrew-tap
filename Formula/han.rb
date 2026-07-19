# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.19.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.19.2/han-darwin-arm64"
      sha256 "36e6c6741faeeea4326150890e3b3714671b11b9f0b24aaf30c6541cb34f3001"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.19.2/han-darwin-x64"
      sha256 "a160da597abcd29921e0c08a0893daaa9e7298a222a46eb9b68c7958d4da9d4f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.19.2/han-linux-arm64"
      sha256 "737c79e5ef3797945fc4c1210ed2f57d01abb96d3a01464d3aead77785349256"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.19.2/han-linux-x64"
      sha256 "2a5bdec20f395aa5eefe75e29fa3a4b7c6ab5bb6c17bd446a8495aadb166642e"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
