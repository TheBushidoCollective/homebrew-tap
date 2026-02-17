# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "main"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/vmain/han-darwin-arm64"
      sha256 ""
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/vmain/han-darwin-x64"
      sha256 ""
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/vmain/han-linux-arm64"
      sha256 ""
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/vmain/han-linux-x64"
      sha256 ""
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
