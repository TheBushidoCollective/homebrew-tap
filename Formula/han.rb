# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.10.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.10.0/han-darwin-arm64"
      sha256 "157836e3e08b37ff9b6eedbe69aa3a5537c3504123942ad58bd1ae2bd6400430"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.10.0/han-darwin-x64"
      sha256 "cf9f4b0fc175879314b25eccc272be42729bb220500bea6285746c85f1c8b965"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.10.0/han-linux-arm64"
      sha256 "248b3d0a7553b13e024e2a12585f801219fa97a2fdedf676a13678f947597ccb"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.10.0/han-linux-x64"
      sha256 "fd0e3ccc19102ab51aa69e100d365f9dbf13ec12347d1bc15678e7a1f5a662d4"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
