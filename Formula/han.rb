# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.21.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.21.1/han-darwin-arm64"
      sha256 "6431722aa19d9ff8047351d03acc30332c2c556ca40d6a3c4d036d175bfb2cb7"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.21.1/han-darwin-x64"
      sha256 "e825d53d198a97b9dac8adcd954c80bf6154d0caa46e056055796342666a85a6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.21.1/han-linux-arm64"
      sha256 "7beee0adf4b8dca56d9e9bcb4f3d05d2f0db0a4afb0ffef6fa143c2089ea21ee"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.21.1/han-linux-x64"
      sha256 "fe99229ba487a191ed73f9a71c7ecf83a0e43d0669dac4d88d8635c70d545f9a"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
