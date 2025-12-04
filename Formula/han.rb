# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.48.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.1/han-darwin-arm64"
      sha256 "902dbf094cc2f78978ddc1e5a138337a4da28669f5d82ff064716472c940aa66"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.1/han-darwin-x64"
      sha256 "0a0eb164e909ff38205a5de4df9c1521774ea85d4e75d963e62f570cf954544f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.1/han-linux-arm64"
      sha256 "940ed0018e511dc2f41410abc95d03e4fa4da0211a0dd96f31c26fc24a1500c2"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.1/han-linux-x64"
      sha256 "bcdb191a6859f073a8bb45e6aa1abe92e9c2a6855f15e276fd1eb48fe9c188bb"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
