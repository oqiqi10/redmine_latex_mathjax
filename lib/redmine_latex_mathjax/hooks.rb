require 'redmine'

module RedmineLatexMathjax
  class RedmineLatexMathjaxHookListener < Redmine::Hook::ViewListener
    def view_journals_update_js_bottom(context={ })
      "MathJax.Hub.Queue([\"Typeset\",MathJax.Hub,\"journal-" + context[:journal].id.to_s +  "-notes\"]);"
    end
  end
end