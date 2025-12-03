# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.36.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.6/han-darwin-arm64"
      sha256 "b9604fe8226172065056e652c78225dd19cfd8437c8fa35d45e992074fc4fb65"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.6/han-darwin-x64"
      sha256 "e942224b5694ce280fbf86efa3d60772e140c6aa13e67b0e1233c65ad98c7fab"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.6/han-linux-arm64"
      sha256 "a7617a9778246e78c3d85a524648256c22ef562673c64e32abf49e257ffd11c5"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.36.6/han-linux-x64"
      sha256 "a2448ef92ba8e747a12e0ac8f06de80f3cc630f21352b547f4e72c0b34aef252"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
