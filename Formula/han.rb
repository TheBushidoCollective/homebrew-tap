# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.28.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.1/han-darwin-arm64"
      sha256 "690371cb0d9b92760f91072360731aa498e7d84feca6967182ccc909c6620ab6"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.1/han-darwin-x64"
      sha256 "d459be8834192c8de21eddbb58aa11d35f56b41a11441639e8d673cb7a4678cc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.1/han-linux-arm64"
      sha256 "2fc48334f686d82cb03e1e5b35732eb12c1b667ce4c4e4fca155baeb8ce03b1c"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.1/han-linux-x64"
      sha256 "bb8c27b754ec9c8ddb808b2e8a64c236fd10920528b48cf2575c76d96da97e16"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
