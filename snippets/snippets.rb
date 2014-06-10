require 'ruble'

snippet_category "0 - Jiva" do |category|
  category.icon_path = "icons/jiva.png"
end

snippet_category "0 - Miva" do |category|
  category.icon_path = "icons/miva.png"
end

snippet "Query" do |snip|
  snip.trigger = "foo"
  snip.expansion = "<mvassign name=\"l.vr:vr\" value=\"{l.vars}\">\n<mvassign name=\"l.vr:query\" value=\"{'SELECT * FROM \\`${1:table}\\` WHERE Actif = 1'}\">\n<mvassign name=\"l.vr:table\" value=\"{'${1:table}'}\">\n<mvassign name=\"l.rdata\" value=\"{GetData(l.vr)}\">"
  snip.category = "0 - Jiva"
  snip.icon_path = "icons/jv_query.png"
end


snippet "MvFunction" do |snip|
  snip.trigger = "foo"
  snip.expansion = "<mvfunction name=\"${1:name}\" parameters=\"${2:var}\" standardoutputlevel=\"compresswhitespace\">\n\t\n\t\n\t\n<mvfuncreturn value=\"{l.ret}\">\n</mvfunction>"
  snip.category = "0 - Miva"
  snip.icon_path = "icons/function.png"
end

snippet "MvEval" do |snip|
  snip.trigger = "foo"
  snip.expansion = "<mveval expr=\"{${1:expr}}\">"
  snip.category = "0 - Miva"
  snip.icon_path = "icons/eval.png"
end

snippet "MvAssign" do |snip|
  snip.trigger = "foo"
  snip.expansion = "<mvassign name=\"${1:name}\" value=\"{${2:expr}}\">"
  snip.category = "0 - Miva"
  snip.icon_path = "icons/assign.png"
end

snippet "MvIf" do |snip|
  snip.trigger = "foo"
  snip.expansion = "<mvif expr=\"{${1:expr}}\">\n\t${2:val}\n</mvif>"
  snip.category = "0 - Miva"
  snip.icon_path = "icons/if.png"
end

snippet "MvWhile" do |snip|
  snip.trigger = "foo"
  snip.expansion = "<mvwhile expr=\"{${1:expr}}\">\n\t${2:val}\n</mvwhile>"
  snip.category = "0 - Miva"
  snip.icon_path = "icons/while.png"
end

snippet "MvComment" do |snip|
  snip.trigger = "foo"
  snip.expansion = "<mvcomment>\n\t${1:expr}\n</mvcomment>"
  snip.category = "0 - Miva"
  snip.icon_path = "icons/comment.png"
end

snippet "MvElse" do |snip|
  snip.trigger = "foo"
  snip.expansion = "<mvelse>\n\t"
  snip.category = "0 - Miva"
  snip.icon_path = "icons/else.png"
end

snippet "MvElseIf" do |snip|
  snip.trigger = "foo"
  snip.expansion = "<mvelseif expr=\"{${1:expr}}\">\n\t"
  snip.category = "0 - Miva"
  snip.icon_path = "icons/elseif.png"
end

snippet "MvCapture" do |snip|
  snip.trigger = "foo"
  snip.expansion = "<mvcapture variable=\"{${1:expr}}\">${2:val}</mvcapture>\n\t"
  snip.category = "0 - Miva"
  snip.icon_path = "icons/elseif.png"
end


# Use Commands > Bundle Development > Insert Bundle Section > Snippet
# to easily add new snippets