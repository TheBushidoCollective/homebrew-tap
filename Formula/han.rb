# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.24.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.24.0/han-darwin-arm64"
      sha256 "3992c7ea034071f124308f75aa1f23562b511f5b8e00cdeb27a357e888551d64"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.24.0/han-darwin-x64"
      sha256 "03b47e4e58b852174e5f8cdaea225edaf4046bd42faac8601908a5ddcde30cef"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.24.0/han-linux-arm64"
      sha256 "750501fcb1c28a17dc764f3f3d1163a2d6a80bc78a4690cdfdf0f9d1a53fe33a"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.24.0/han-linux-x64"
      sha256 "c05b305bade55189f8c31347ada3e93d25f4e4cd6d1db9fc477b6eed7fa3ec25"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
