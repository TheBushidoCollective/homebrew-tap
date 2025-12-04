# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.42.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.42.0/han-darwin-arm64"
      sha256 "cf57a09c724d4846492cb7a1be4db3ae816d6464d01f5a797b9eb25ca3f01d99"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.42.0/han-darwin-x64"
      sha256 "45d222a8d97f92ca1a77c2a33ac6e77a6f631fb616bf181f70a3d70287345a76"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.42.0/han-linux-arm64"
      sha256 "2c2e1d0c51d3c4349fa5a6edb09287f7a61edb67c28af772bc4ba724ebf45382"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.42.0/han-linux-x64"
      sha256 "e5e9b4c90dd1a8a4dbcb1985ed1075237128f38fa199720d8d22407d9785e364"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
