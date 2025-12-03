# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.39.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.4/han-darwin-arm64"
      sha256 "d1af7eca0d5dea34d47e75f5c7823de39e17b686ff7dafaab1e8fb134a39a906"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.4/han-darwin-x64"
      sha256 "200c9af7a52b2d6e8f3b02c6e62b40244dca291b5d69fb59132a0fad81283e53"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.4/han-linux-arm64"
      sha256 "0e004d3ecb43083d67338c64ec8b6e46b04d1967a4403ad3103128563bb286ce"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.4/han-linux-x64"
      sha256 "7eec03f8fd75c8fead4bcdf0c3332e2c4237a74a21be204d3e0a58c4a9fecfda"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
