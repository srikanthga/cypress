module QrdaExecutionHelper


   # method used to mark the elements in the document that have errors so they 
  # can be linked to
  def match_errors(test_execution)
    file = test_execution.files[0]
    doc = Nokogiri::XML(file.read)
    error_map = {}
    error_id = 0
    error_attributes = []
    locs = content_errors.collect{|e| e.location}
    locs.compact!

    locs.each do |location|
      # Get rid of some funky stuff generated by schematron
      clean_location = location.gsub("*:", '').gsub("[namespace-uri()='urn:hl7-org:v3']", '')
      node = REXML::XPath.first(doc , clean_location)
      if(node)
        elem = node
        if node.class == REXML::Attribute
          error_attributes << node
          elem = node.element
        end
        if elem
          unless elem.attributes['error_id']
            elem.add_attribute('error_id',"#{error_id}") 
            error_id += 1
          end
          error_map[location] = elem.attributes['error_id']
        end
      end
    end

    return doc, error_map, error_attributes
  end
  
end