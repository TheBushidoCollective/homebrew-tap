# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.11.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.11.0/han-darwin-arm64"
      sha256 "f3260186d6c5b73a5ad22c4c97eef7dcfdf1aade1dfe5dfeae9aad76f10e62f2"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.11.0/han-darwin-x64"
      sha256 "c303be78c083ce1b06340109f4e6b063ef585a5392867fb0ed97f0b168ddf22e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.11.0/han-linux-arm64"
      sha256 "440a06db32fa81f893439e40b73c8f5187705dfe00f0299a89e179f058e17656"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.11.0/han-linux-x64"
      sha256 "83079bdfa5ac0cbb4fa7dcb8d5a6f4f93b3dc05aee2804082fc81565acbc73dd"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
