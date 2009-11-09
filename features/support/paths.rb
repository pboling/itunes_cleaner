module NavigationHelpers
  # Maps a name to a path. Used by the
  #
  #   When /^I go to (.+)$/ do |page_name|
  #
  # step definition in webrat_steps.rb
  #
  def path_to(page_name)
    case page_name
    
    when /the home\s?page/
      '/'
    when /the new encoding page/
      new_encoding_path

    when /the new bitrate page/
      new_bitrate_path

    when /the new library_song page/
      new_library_song_path

    when /the new library page/
      new_library_path

    when /the new version page/
      new_version_path

    when /the new version page/
      new_version_path

    when /the new song page/
      new_song_path

    when /the new encoding page/
      new_encoding_path

    when /the new encoging page/
      new_encoging_path

    when /the new song page/
      new_song_path

    
    # Add more mappings here.
    # Here is a more fancy example:
    #
    #   when /^(.*)'s profile page$/i
    #     user_profile_path(User.find_by_login($1))

    else
      raise "Can't find mapping from \"#{page_name}\" to a path.\n" +
        "Now, go and add a mapping in #{__FILE__}"
    end
  end
end

World(NavigationHelpers)
