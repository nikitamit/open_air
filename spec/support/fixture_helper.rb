class FixtureErb < OpenStruct
  def render(template)
    ERB.new(template).result(binding)
  end
end

def fixture_file(template, context={})
  template = File.read(File.join(File.dirname(__FILE__), '../fixtures', template))
  FixtureErb.new(context).render(template)
end
