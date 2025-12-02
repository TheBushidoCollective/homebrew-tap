# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.31.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.0/han-darwin-arm64"
      sha256 "8476ec011a01943c56c08ebf8ea0aefa43ff065546fc06fb24cc407e3e0a8f72"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.0/han-darwin-x64"
      sha256 "44d5b2034ccfa4ebe5dc10a76fb89a9456765bbd3fa2c49cb583f964c7ee023f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.0/han-linux-arm64"
      sha256 "38683b5a4bec5c8bc5359cac27426565a36ab061c62ec00d3224a8732d4a1fe1"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.0/han-linux-x64"
      sha256 "62602921335460f0584032b4afe2520d790b95f6285ab4ae12138c97ef5172b0"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
