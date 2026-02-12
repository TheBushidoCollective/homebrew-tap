# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "3.12.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.7/han-darwin-arm64"
      sha256 "10be8318753d9ad3b90f4dc9a95ff8be0444d28696623a2dac3d3300da20885f"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.7/han-darwin-x64"
      sha256 "315089bef6250a958a5f8942063583253e6bc45037f71fb9067d80aed9982b2d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.7/han-linux-arm64"
      sha256 "8d776517ba3dccff40f5ba91e437a029529d258bb52ddb4f63cbc96d8ba9e251"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v3.12.7/han-linux-x64"
      sha256 "52b77d860853c648c83cd211ac84134c74c7a2ec6b603643df745785efb17f91"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
