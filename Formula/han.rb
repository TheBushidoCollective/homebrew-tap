# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.56.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.4/han-darwin-arm64"
      sha256 "01eb90bf2a16f24c92fbd2416eeec48a288039f385bb63842151087d5a6984a9"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.4/han-darwin-x64"
      sha256 "d9685e2a7febeeb559997acd9f3bedfa7571147a2c902f0a66ae31b10581696e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.4/han-linux-arm64"
      sha256 "23ae6465fce385df0ea7236391e297d1e9a67a89b5f21fae2fa3b1ba02409d3c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.56.4/han-linux-x64"
      sha256 "9e39c493a8255b1928f41a34047c4d8191c6ab3a3832b6db2c6104a015349e91"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
