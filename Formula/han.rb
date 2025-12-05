# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.48.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.2/han-darwin-arm64"
      sha256 "d2603696987b4fd803b1afaf09209a92f6967c0d366e59c01e3e3ec916fb5517"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.2/han-darwin-x64"
      sha256 "b9f3d3dd49f11a188915e8901f85a5b5397fdafa16a5bea0d69f96e5f4fad5df"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.2/han-linux-arm64"
      sha256 "616ab931310c2745d02c41599285215a690c4a87c832e3d8973b48c29a7eecf8"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.2/han-linux-x64"
      sha256 "6ca83513048f247a76839c08500c588d44a1e42e7a89251ec7c27b614c2aea76"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
