TemplateList = Pathname.glob("#{__dir__}/template_list/*.casl").sort.collect do |e|
  body = e.read
  title = e.basename(".*")
  if md = body.lines.first.match(/;+\s*(.*)/)
    title = md.captures.first
  end
  {:title => title, :body => body}
end
