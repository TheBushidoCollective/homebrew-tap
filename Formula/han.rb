# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.41.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.41.1/han-darwin-arm64"
      sha256 "5267f6b34505dcb014c2e1d15e32dc3bdaa0497b6e9913634dd98d9d18e141b2"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.41.1/han-darwin-x64"
      sha256 "bc787ba98a9547ed430cb07b80d8299d9caf20d42958defed0c9dc02d9d9bd96"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.41.1/han-linux-arm64"
      sha256 "44429f646196b42596601bccfa32c961e80b7f471efc66042840f66e0944a024"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.41.1/han-linux-x64"
      sha256 "85ccfad12e7cc42eeadaf9ed1541cdde739d9b3b922d96b8f51d2115e3a5b8ea"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
