# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.12.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.6/han-darwin-arm64"
      sha256 "942eb2a2ea37be80fa2cc24bfedf64a7943f492cf90c02db9e6ecf764723613a"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.6/han-darwin-x64"
      sha256 "fb964501aeaf76d71ba78023994438b4747174f0ce4f8aabf1f8917046f0a966"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.6/han-linux-arm64"
      sha256 "39e1c210cc2815d80fcb881342da8813b6e1eb83d64a0d41abc647075bbeeb38"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.6/han-linux-x64"
      sha256 "8d55a843365ab976dd4b28f7aea180b9ddaaa5bf5dc5711ad0e7c8c264fb823e"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
