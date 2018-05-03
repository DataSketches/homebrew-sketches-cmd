class JettyRunner < Formula
  desc "Use Jetty without an installed distribution"
  homepage "https://datasketches.github.io"
  url "https://search.maven.org/remotecontent?filepath=com/yahoo/datasketches/sketches-cmd/0.1.0/sketches-cmd-0.0.1-with-shaded-core.jar"
  version "0.1.0"
  sha256 "58d9909aed665cb4660b2eb42a853c95ba6e1816284d366385b1368a7e3f1e0b"

  bottle :unneeded

  depends_on :java => "1.8+"

  def install
    libexec.install Dir["*"]

    bin.mkpath
    bin.write_jar_script libexec/"sketches-cmd-#{version}-with-shaded-core.jar", "ds"
  end

end
