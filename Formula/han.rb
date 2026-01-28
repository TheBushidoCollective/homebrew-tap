# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.1.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.1.4/han-darwin-arm64"
      sha256 "e4cff643cc6bc024cdf901c5ecda896a814bfcc8bfa9c9c9621d4c15276ed79b"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.1.4/han-darwin-x64"
      sha256 "1c111bcc0d36c8d15ee713788340ac931f816905f0f49b2d5294701614dfaa49"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.1.4/han-linux-arm64"
      sha256 "376cc27e714f8574c9c8d4a6e8df28a14e954e630af842e950c8d97100ae7a13"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.1.4/han-linux-x64"
      sha256 "078e06476c492475c41119d05a0a715daab75013475f3e5f0c57bbd5387efd60"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
