# This file was generated by GoReleaser. DO NOT EDIT.
class Darcyctl < Formula
  desc "CLI for Darcy"
  homepage "https://meetdarcy.com"
  version "0.7.11"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/projectmin/homebrew-darcyctl/releases/download/v0.7.11/darcyctl-macos-amd64.tar.gz"
    sha256 "da298b103536e282e8c0cf0088ac6b57cdea73c34d6580d81457d1124200d3ad"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/projectmin/homebrew-darcyctl/releases/download/v0.7.11/darcyctl-linux-amd64.tar.gz"
    sha256 "04dadd10601d928cf621299b8b989eb1a39d28d9d852cdf84211b5dada6d9e73"
  end

  def install
    bin.install "darcyctl"
  end

  test do
    system "#{bin}/darcyctl version"
  end
end