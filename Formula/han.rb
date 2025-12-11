# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.60.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.60.1/han-darwin-arm64"
      sha256 "b75b0e73403cfd3a2f25c37ad9fca6985db69e5bcf520b7fbd3131850f061f37"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.60.1/han-darwin-x64"
      sha256 "487391b360ab3c3d552e4bf68cb42764daa83bd1cd02523c4b0f05c80edd243e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.60.1/han-linux-arm64"
      sha256 "b47e5019dbc5fef1be122d0bffc799196e3a9cbbda11baeaf69a0e1fa708cd33"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.60.1/han-linux-x64"
      sha256 "741eda77b170c620a01c0a3f60f780509baaacb40bb8a8f6bee1ecbe5b79969a"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
