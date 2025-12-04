# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.47.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.3/han-darwin-arm64"
      sha256 "e38d720a0ac14700ca30971c6a5111d28f6ed78138e9aaf710569e8de39e705e"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.3/han-darwin-x64"
      sha256 "1957fd6966d7ea0f2a6a08789918b99c219f4eeecb36237fdc1e0cbd1e92a07e"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.3/han-linux-arm64"
      sha256 "7c058cfca1a0363a3e2dd4d210b934f7c06360c377285abd524b9e2fa192a0fc"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.3/han-linux-x64"
      sha256 "f64f7974386517397115017f7f6552bf9518b88d5fecd71539a673977aa09b3a"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
