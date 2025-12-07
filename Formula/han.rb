# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.51.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.51.3/han-darwin-arm64"
      sha256 "0236a228b1c4163357f88b850c86f71f19c2aa64446f651837ade2a67bd2500d"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.51.3/han-darwin-x64"
      sha256 "145d93b1a21d6438541e0997dec22bf1caa1f3709fac40107bc584b3b404583c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.51.3/han-linux-arm64"
      sha256 "920c41dba89a9fbe34f31b9923842ad12cf91c9e960c89103bf0e7a7542b83d9"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.51.3/han-linux-x64"
      sha256 "014cb7d212ab8cb10113955d222ff00a72ae8a0c13115d1b8389b57bfe7e7fbf"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
