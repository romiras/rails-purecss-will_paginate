# config/initializers/will_paginate.rb
# 
# This extension code is adapted from the code written by Isaac Bowen for
# bootstrap-will_paginate, originally found at 
# http://isaacbowen.com/blog/using-will_paginate-action_view-and-bootstrap/

require 'will_paginate/view_helpers/action_view'

module WillPaginate
  module ActionView
    def will_paginate(collection = nil, options = {})
      options, collection = collection, nil if collection.is_a? Hash
      # Taken from original will_paginate code to handle if the helper is not passed a collection object.
      collection ||= infer_collection_from_controller 
      options[:renderer] ||= PurecssLinkRenderer
      super.try :html_safe
    end

    class PurecssLinkRenderer < LinkRenderer
      protected
      
      def html_container(html)
        tag :div, tag(:ul, html, :class => "pure-paginator"), container_attributes
      end

      def page_number(page)
        tag :li, link(page, page, :rel => rel_value(page), :class => (page == current_page ? 'pure-button pure-button-selected pure-button-active' : 'pure-button' ))
      end

      def gap
        tag :li, link('&hellip;'.html_safe, '#', :class => 'pure-button pure-button-disabled')
      end

      def previous_or_next_page(page, text, classname)
        # classname = classname.gsub('previous_page','prev').gsub('next_page','next')
        text = text.include?('Previous') ? '&#171;' : text
        text = text.include?('Next') ? '&#187;' : text

        tag :li, link(text, page || '#', 
      :class => [('pure-button'), (classname[0..3] if  @options[:page_links]), (classname if @options[:page_links]), ('pure-button-disabled' unless page)].join(' ') )
      end
    end
  end
end
