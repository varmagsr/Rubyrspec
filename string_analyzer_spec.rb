require 'string_analyzer' 

describe StringAnalyzer do 
   context "With valid input" do 
      
      it "should detect when a string contains vowels" do 
         sa = StringAnalyzer.new 
         test_string = 'uuu' 
         expect(sa.has_vowels? test_string).to be true 
      end 
		
      it "should detect when a string doesn't contain vowels" do 
         sa = StringAnalyzer.new 
         test_string = 'bcdfg' 
         expect(sa.has_vowels? test_string).to be false
      end 

      it "Only one vowel and no other letters" do
        sa = StringAnalyzer.new
        test_string = 'eee'
        expect(sa.has_vowels? test_string).to be true
      end

      it "Empty string (no letters)" do
        sa = StringAnalyzer.new
        test_string = ''
        expect(sa.has_vowels? test_string).to be false
      end
    
   end 
end