# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.42.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.42.2/han-darwin-arm64"
      sha256 "e8a4041d83c277fc504fc5f2a67d553f6e001d221ef53d30e293de273e22da41"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.42.2/han-darwin-x64"
      sha256 "4301ab2622903f9329b2c8cc1507144b3876b5fb8881fd0424e325e9e0c98d19"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.42.2/han-linux-arm64"
      sha256 "48f0c2f5032b94f246675f07638fc8b8f5bfffa91a2bdcbb3d1a42d13f39d6b3"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.42.2/han-linux-x64"
      sha256 "d09186f81bb6c0937796a0f16fe4a8b15e33bafe9ef8e1a806ecb50a4da66dd6"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
