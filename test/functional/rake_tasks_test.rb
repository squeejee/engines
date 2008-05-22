class RakeTaskTests < Test::Unit::TestCase
  def test_rake_should_be_able_to_parse_the_engines_rakefile
    system("rake -T db:migrate:plugins")
    assert $?.success?, 'calling rake failed'
  end

  def test_rake_should_be_able_to_redefine_the_doc_plugins_task
    system("rake doc:plugins")
    assert $?.success?, 'redefinition of doc:plugins failed'
  end
end