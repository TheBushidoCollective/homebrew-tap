# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "2.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.3.0/han-darwin-arm64"
      sha256 "066b941215427ef04083250b53d741507a2c32825cec8970453866bfc72a8ac8"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.3.0/han-darwin-x64"
      sha256 "550fc081bdf4f063c4792b0f184ba1b4fa51d8e37ef875170c0a1b55689fc89a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.3.0/han-linux-arm64"
      sha256 "e7cf4aadd971a3104af35d64880e0844d325d400c8e2ad22376c08b0665db527"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v2.3.0/han-linux-x64"
      sha256 "fa6045ec7ee28f6ebd6b4a3e3af0acabf7665371d08545586b838bd123a3cdc4"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
