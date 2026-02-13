# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.13.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.13.0/han-darwin-arm64"
      sha256 "fb278dce22f6efbfe71ba5bee0e9041d2b84c72a0bcc76daeb00c714ad0ea7a3"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.13.0/han-darwin-x64"
      sha256 "b92fa56dbd7117db67491c78e781d47332acc0c52c11f2be427b0e7f6a79250c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.13.0/han-linux-arm64"
      sha256 "cab7669daafe26b6eee1b0ca80d9c1a0aca68a03dbba62a43e19576daa00001a"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.13.0/han-linux-x64"
      sha256 "db20a25c65df241b252772030ccb1f623c42d9974207c1f687b5e869c170a949"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
