# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.59.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.59.0/han-darwin-arm64"
      sha256 "3f2e60713154a111da0ed9d5ce82c72be8db0440896bcdee0fd7a0406a11decb"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.59.0/han-darwin-x64"
      sha256 "5b0104f277550d0b6b2f4c8b46df96b49ea3453bef7b27b2a91876e0b997f341"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.59.0/han-linux-arm64"
      sha256 "589b0bd92a5a0d98fa562c8904bd5e70adf9d6580255ffc5bde6e432f91be31c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.59.0/han-linux-x64"
      sha256 "49386664b92c59cfeeecdc8cf1ff3464fe2b85598c5a103759e3f4a293cbf30a"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
