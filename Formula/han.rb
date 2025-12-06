# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.49.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.4/han-darwin-arm64"
      sha256 "5dbe16bb01b47a310f6fa7a847da1e69f61bcc2ac5e00f7a0c8d92c0120063aa"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.4/han-darwin-x64"
      sha256 "7b2675196fc48bf3d6687e2c304d5e16f9f63e926d6c6c02b25859e623160918"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.4/han-linux-arm64"
      sha256 "5914c0e3afeebe9f5c76c58e7c87055fa6df515b81a161989635f5d3f223d311"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.49.4/han-linux-x64"
      sha256 "1e0a6d09fd3c153d1c56545a93c7c5b1d17ae74fd3965dbe7a9ce7d2403c22ed"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
