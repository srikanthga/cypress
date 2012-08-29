class InpatientProductTest < ProductTest
  
  state_machine :state do
    
    after_transition any => :generating_records do |test|
      #generate the records
      test.calculate
    end
        
    after_transition any => :calculating_expected_results do |test|
      #calculate the results
       test.ready
    end
        
    event :generate_population do
      transition :pending => :generating_records
    end
    
    event :calculate do
      transition :generating_records => :calculating_expected_results
    end
  
  end
  
  #after the test is created generate the population
  after_create :generate_population
  
  
 
  
  
end