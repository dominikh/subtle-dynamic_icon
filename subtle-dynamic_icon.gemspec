Gem::Specification.new do |s|
  s.name              = "subtle-dynamic_icon"
  s.summary           = "A small abstractional layer around Subtlext::Icon, featuring integrated support for colors and custom drawing routines."
  s.description       = "DynamicIcon is a small abstractional layer around Subtlext::Icon, with
integrated support for colors and custom drawing routines. The main purpose of this gem is to be used
as a foundation for more sophisticated icons like graphs."
  s.version           = "0.0.2"
  s.author            = "Dominik Honnef"
  s.email             = "dominikho@gmx.net"
  s.date              = Date.today.to_s
  s.homepage          = ""

  s.has_rdoc = 'yard'

  s.required_ruby_version = '>= 1.9.1'

  s.files = Dir['Rakefile', '{bin,lib,man,test,spec}/**/*',
                  'README*', 'LICENSE*']
  # s.executables = [""]
end
