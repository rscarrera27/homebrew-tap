class ClasspathSurfer < Formula
  desc "Fast dependency symbol search for Gradle Java/Kotlin projects"
  homepage "https://github.com/rscarrera27/classpath-surfer"
  url "https://github.com/rscarrera27/classpath-surfer/releases/download/v0.1.0/classpath-surfer-aarch64-apple-darwin.tar.gz"
  sha256 "4121ce53227101717803ad95a462770434bbacda25857ac21f99ad9a72640c9e"
  version "0.1.0"
  license "Apache-2.0"

  def install
    bin.install "classpath-surfer"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/classpath-surfer --version")
  end
end
