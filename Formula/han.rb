# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.20.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.20.0/han-darwin-arm64"
      sha256 "74ee905dcf3fe7b05e9174731de46e1cbc7f6a5fe36b5a5d61513d302a790332"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.20.0/han-darwin-x64"
      sha256 "0ad4fb53ca1b08210acd90996c9f1c5eda2f7b23eacefdc9065027ac7a9ce2bd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.20.0/han-linux-arm64"
      sha256 "aa19392b5a23066bed464d2268554e520014561e24e23c41583ae38ad117467c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.20.0/han-linux-x64"
      sha256 "a8b705ac4635f0904c3f0493c2f11389c1d0389829f618ffeedbbfebc0e8fbcc"
    end
  end

  def install
    bin.install Dir["*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
