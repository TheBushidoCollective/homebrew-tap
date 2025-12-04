# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.45.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.45.1/han-darwin-arm64"
      sha256 "0aa9f9a6f83404726279eb73cd69ef6691c4fa149951924f9642c9dd5ae22091"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.45.1/han-darwin-x64"
      sha256 "f522c1d4e273d5899f5eb92c81e7c9cd509b7b222ddbce8e6eb1db0e2dc0aca9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.45.1/han-linux-arm64"
      sha256 "ace0fd4329bbef3e22f9a58ae56f49bcd935bd3e1ca2a7c7770eee422dab24db"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.45.1/han-linux-x64"
      sha256 "8cb6970948782641cdb736e58e7463034f54d8718b4e1ba5ce3a5bd69772bcd2"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
