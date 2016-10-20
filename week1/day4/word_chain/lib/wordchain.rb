class WordChain
    def initialize(dictionary)
        @dictionary = dictionary
    end

    def find_chain(word1,word2)
    	words = Hash.new(0)
        word1_arr = word1.split("")
        word2_arr = word2.split("")
        
        words[word1] += 1
        i = 0
        broken_loop = false
        while word1_arr != word2_arr
        	
        	if word1_arr[i] != word2_arr[i]
        		original_letter = word1_arr[i]
        		word1_arr[i] = word2_arr[i]
        		if !@dictionary.exists?(word1_arr.join(""))
	        		word1_arr[i] = original_letter
	        	end
	        	words[word1_arr.join("")] += 1	
        	end
        	
        	if i == word2.length - 1 && word1_arr != word2_arr
        		i = -1
        	end   
			i += 1
			words.each do |key,val|
				if val >= word2.length
					puts "This loop is broken"
					broken_loop = true
				end
			end
			if broken_loop
				break
			end

        end
        words.each do |key,val|
        	if @dictionary.exists?(key)
        		puts key
        	end
        end
    end
end



