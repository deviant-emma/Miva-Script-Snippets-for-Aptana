require 'ruble'

bundle do |bundle|
  bundle.display_name = 'Miva'
  bundle.author = 'Emma Bischoff'
  bundle.copyright = <<END
(c) Copyright 2014 mivascript.org. Distributed under MIT license.
END

  bundle.description = <<END
Sample description
END

  # uncomment with the url to the git repo if one exists
  # bundle.repository = 'git@github.com:username/repo-name.git'

  # Use Commands > Bundle Development > Insert Bundle Section > Menu
  # to easily add new sections
  bundle.menu 'Miva' do |menu|
    menu.command 'Meee'
    menu.command 'Swap Case'
    menu.separator
    menu.menu 'Sub Menu' do |sub_menu|
        sub_menu.command 'Sample Snippet'
    end
  end
end