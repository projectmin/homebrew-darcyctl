# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Darcyctl < Formula
  desc "CLI for Darcy"
  homepage "https://meetdarcy.com"
  version "0.8.8"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/projectmin/homebrew-darcyctl/releases/download/v0.8.8/darcyctl-macos-amd64.tar.gz"
    sha256 "0d9aaf5430f07f2b4a3ade94f096453253bd73413d1a5878138385d3058542ca"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/projectmin/homebrew-darcyctl/releases/download/v0.8.8/darcyctl-linux-amd64.tar.gz"
    sha256 "f9590e8722ea634d9e395e822b5d1c49420b3b1228aadd27cfca7051f092ada1"
  end

  def install
    bin.install "darcyctl"
  end

  test do
    system "#{bin}/darcyctl version"
  end
end
