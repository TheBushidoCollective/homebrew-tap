# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "2.0.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.0.0/han-darwin-arm64"
      sha256 "ee86a400d7edfe04325994b5f87536ed815dd90685176634a309801e604e3873"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.0.0/han-darwin-x64"
      sha256 "d2397f73d0beeb7d62ec1cecbc4087ac12f6d6d868087500dfa7a686961476b8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.0.0/han-linux-arm64"
      sha256 "ec21f6c4bcab86a20453c5ec419bafee52d270b6bdd51ea0e66d66fd5c7b985e"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.0.0/han-linux-x64"
      sha256 "e763ec163a771e3ec9271644cadd1df00308f37802dd02535bca2c760870ca14"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
