# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.47.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.4/han-darwin-arm64"
      sha256 "971f6cf129c6a723857bb71dc797a2839eb84f2ef5ba0dc6169dcab5b15a91f3"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.4/han-darwin-x64"
      sha256 "349e5a62a1004950396840955fe0c4742992d01fa65846680331ad7e5023a0b3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.4/han-linux-arm64"
      sha256 "a0b740dd437ff55946626fe395a9e51cf6441eb8f5dca2bb9c351e3e5cb462b3"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.47.4/han-linux-x64"
      sha256 "ac04182151b035b78eb37ca6c34a7858b5b861d6093e368854000f7c2533505b"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
