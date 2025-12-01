# typed: false
# frozen_string_literal: true

class Han < Formula
  desc "Sophisticated Claude Code Plugins with Superior Accuracy"
  homepage "https://han.guru"
  version "1.28.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.0/han-darwin-arm64"
      sha256 "1996d4acb859d062c2df06ea01f28e49ef8ea4aa2aaf438146c19412475af1ac"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.0/han-darwin-x64"
      sha256 "f4ef77f9c1e391ff41ea0ceb4ddb18c6c6b9d1ebeb580d0ee7ddf6bab7dae416"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.0/han-linux-arm64"
      sha256 "d74c782ac5ace441a5c8a125befe68e4f1f7033be6df8dc63c0385795e9b2443"
    else
      url "https://github.com/TheBushidoCollective/han/releases/download/v1.28.0/han-linux-x64"
      sha256 "40d2938c92f9da8166b9eb664b066ea5e9458962003099d48cdf0370993591c0"
    end
  end

  def install
    bin.install Dir["han-*"].first => "han"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/han --version")
  end
end
