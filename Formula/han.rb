# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.21.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.4/han-darwin-arm64"
      sha256 "5fe228cd663708ca7a22349ec03f82ed9022d9d341a828f3e154a32485306042"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.4/han-darwin-x64"
      sha256 "641b9daa42de5be659de7e11aea05763347179906c0533f31196b4f55c0d0903"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.4/han-linux-arm64"
      sha256 "0dc6613313e47b46090dda2aaec65b2008b0e689a1dcbdea3b4e7197625ee4ef"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.21.4/han-linux-x64"
      sha256 "f7dc658374d803f04755eb9624b739c0dfb2c8211601a58dc5d39c5220ff5799"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
