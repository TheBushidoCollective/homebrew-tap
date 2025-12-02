# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.31.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.3/han-darwin-arm64"
      sha256 "c551845ed952bf14c437e9e95f9493e7118ce8cfecfec97e8f2c4643a32d9740"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.3/han-darwin-x64"
      sha256 "ca58f6ceb07990aff4adc7dd87eb4c067bc2aa0d9eebfcd91d5ae67e97fde45c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.3/han-linux-arm64"
      sha256 "853db1307447fea98d6e8219f1e6c0f72368af40e247d00fc24f60900e77ea9d"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.31.3/han-linux-x64"
      sha256 "d9ed0f1914989bbceff103d74ce4fb2dec4ad8836f1d24be04c0db07572a5248"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
