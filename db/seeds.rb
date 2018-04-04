sites = [{name: 'Home', code: 'HOM'}]

sites.each do |site|
  slug = site[:name].downcase.parameterize(separator: '_')
  Site.find_or_create_by({ slug: slug, name: site[:name] }) do |st|
    st.code = site[:code]
    st.save!
  end
end