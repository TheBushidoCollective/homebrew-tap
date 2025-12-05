# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.48.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.3/han-darwin-arm64"
      sha256 "756cc62777af1906f32c89cbf7bd169fad72b0ad411de9fb8fc59f4f3bb88e14"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.3/han-darwin-x64"
      sha256 "b65926fb7314bab2d5ccd84a152bc566c2ae037c142583cb15af0797ca4bd144"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.3/han-linux-arm64"
      sha256 "265a260f5487462973c75bb2c94706bf5aa68297beb82b072aebb506d256c0d6"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.48.3/han-linux-x64"
      sha256 "aa56fafd1946a74bd7a12e89ceeafa8aaa9309d24dabe114354d563bb58b51ff"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
