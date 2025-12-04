# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.39.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.6/han-darwin-arm64"
      sha256 "bbdb8d938f451d92716f758c6cddd7524b62f0ccaff34d4e931b327b112fe8f2"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.6/han-darwin-x64"
      sha256 "056f8570d3db5b2e728d6c86aaeaad9b1bd520606995ba1033e0c2345f2b8bac"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.6/han-linux-arm64"
      sha256 "b6cd6f88fd83b4f9863ac8b3ca7eefa49c577b155565e64377ff272c904adca3"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.39.6/han-linux-x64"
      sha256 "994a360e6eeae4641d0c847b714667d8db687bd85f11cb9cc9ed2e77cbcb3149"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
