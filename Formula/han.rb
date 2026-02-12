# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.12.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.8/han-darwin-arm64"
      sha256 "942e880ef4f6d3f5afd0fd92de84afa2087ade1df1aeeee31202c11e39349de4"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.8/han-darwin-x64"
      sha256 "ea988fee6e3efc03341a37ddc2d9f3c172f1437a971f1b4655477d8b6d80a881"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.8/han-linux-arm64"
      sha256 "2cef809b8d402c88619e06f5b8cb0e37cbf7fe091cebdb109d75d482ca61aee7"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.8/han-linux-x64"
      sha256 "2e895424e5a0e0f4e62e57ae975aafc351a4d7258b02e74742700078f5872ce2"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
